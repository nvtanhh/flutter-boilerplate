import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/configs/all.dart';
import '../../core/exceptions/all.dart';
import '../../core/helpers/stream/dispose_bag.dart';
import '../../core/mixins/log_mixin.dart';
import '../../domain/entities/user.dart';
import '../common_blocs/app/app_bloc.dart';
import '../common_widgets/loading.dart';
import '../resource/styles/gaps.dart';
import 'app_localizations_mixin.dart';
import 'app_theme_mixin.dart';
import 'bloc/base_bloc.dart';
import 'bloc/common/common_bloc.dart';
import 'exception_handler/all.dart';

abstract class BasePageState<P extends StatefulWidget, B extends BaseBlocDelegateMixin> extends State<P>
    with LogMixin, AppThemeMixin, AppLocalizationsMixin, AutomaticKeepAliveClientMixin
    implements ExceptionHandlerListener {
  late final CommonBloc commonBloc;
  late final B bloc;
  // Incase you want to use cubit instead of bloc
  B get cubit => bloc;

  late final ExceptionHandler exceptionHandler;
  late final ExceptionMessageMapper exceptionMessageMapper = getIt.get<ExceptionMessageMapper>();

  late Future<dynamic> _initBLocsFeature;

  bool get allowLoadingIndicator => true;

  // Only use this method when logged in
  User get currentUser => getIt.get<AppBloc>().state.currentUser!;
  User? get currentUserOrNull => getIt.get<AppBloc>().state.currentUser;
  bool get isUserLoggedIn => currentUserOrNull != null;

  @override
  bool get wantKeepAlive => false;

  late final DisposeBag disposeBag = DisposeBag();

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    exceptionHandler = ExceptionHandler(
      context: context,
      listener: this,
    );
    _initBLocsFeature = _initBlocs();
  }

  @override
  void dispose() {
    if (!bloc.isSingletonBloc) {
      bloc.close();
    }
    disposeBag.dispose();
    super.dispose();
  }

  @override
  void onRefreshTokenFailed() {
    commonBloc.add(const CommonEvent.forceLogoutButtonPressed());
  }

  @protected
  void addAutoDisposeItem(Object item) {
    disposeBag.addDisposable(item);
  }

  void addFirstEvent() {}

  Future _initBlocs() async {
    try {
      bloc = getIt.get<B>();
    } catch (e) {
      bloc = await getIt.getAsync<B>();
    }

    if (bloc.isSingletonBloc) {
      commonBloc = bloc.commonBloc;
    } else {
      commonBloc = getIt.get<CommonBloc>();
      bloc.commonBloc = commonBloc;
    }

    addFirstEvent();
  }

  Widget placeholder() {
    return const AppDefaultLoading();
  }

  void handleException(AppExceptionWrapper appExceptionWrapper) {
    exceptionHandler
        .handleException(
      appExceptionWrapper,
      exceptionTitle: parseExceptionTitle(appExceptionWrapper.appException),
      exceptionMsg: parseExceptionMessage(appExceptionWrapper.appException),
    )
        .then(
      (value) {
        appExceptionWrapper.exceptionCompleter?.complete();
      },
    );
  }

  String? parseExceptionTitle(AppException appException) {
    return exceptionMessageMapper.title(context, appException);
  }

  String parseExceptionMessage(AppException appException) {
    return exceptionMessageMapper.mapMessage(
      context,
      appException,
      customMessageParser: customExceptionMessageParser,
    );
  }

  String? customExceptionMessageParser(
    BuildContext context,
    AppException exception,
  ) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return FutureBuilder<dynamic>(
      future: _initBLocsFeature,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return placeholder();
        }

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: bloc),
            BlocProvider.value(value: commonBloc),
          ],
          child: BlocListener<CommonBloc, CommonState>(
            listenWhen: (previous, current) =>
                previous.appExceptionWrapper != current.appExceptionWrapper && current.appExceptionWrapper != null,
            listener: (context, state) {
              handleException(state.appExceptionWrapper!);
            },
            child: buildPageListeners(
              child: Stack(
                children: [
                  buildPage(context),
                  if (allowLoadingIndicator) _buildLoadingOverlay(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoadingOverlay() {
    return BlocBuilder<CommonBloc, CommonState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (!state.isLoading) {
          return AppSpacing.emptyBox;
        }
        return buildPageLoading();
      },
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const Center(child: AppDefaultLoading());

  Widget buildPage(BuildContext context);
}
