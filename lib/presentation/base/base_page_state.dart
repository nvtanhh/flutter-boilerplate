import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/configs/all.dart';
import '../../core/exceptions/all.dart';
import '../../core/helpers/stream/dispose_bag.dart';
import '../../core/mixins/log_mixin.dart';
import '../common_widgets/loading.dart';
import 'app_localizations_mixin.dart';
import 'app_theme_mixin.dart';
import 'bloc/base_bloc.dart';
import 'bloc/common/common_bloc.dart';
import 'exception_handler/all.dart';

abstract class BasePageState<P extends StatefulWidget,
        B extends BaseBlocDelegateMixin> extends State<P>
    with
        LogMixin,
        AppThemeMixin,
        AppLocalizationsMixin,
        AutomaticKeepAliveClientMixin {
  late final CommonBloc commonBloc;
  late final B bloc;
  // Incase you want to use cubit instead of bloc
  B get cubit => bloc;

  late final ExceptionHandler exceptionHandler;
  late final ExceptionMessageMapper exceptionMessageMapper =
      getIt.get<ExceptionMessageMapper>();

  late Future<dynamic> _initBLocsFeature;

  bool get useLoadingIndicator => false;

  @override
  bool get wantKeepAlive => false;

  late final DisposeBag disposeBag = DisposeBag();

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _initBLocsFeature = _initBlocs();
  }

  @override
  void dispose() {
    bloc.close();
    disposeBag.dispose();
    super.dispose();
  }

  @protected
  void addAutoDisposeItem(Object item) {
    disposeBag.addDisposable(item);
  }

  void addFirstEvent() {}

  Future _initBlocs() async {
    commonBloc = getIt.get<CommonBloc>();

    try {
      bloc = getIt.get<B>();
    } catch (e) {
      bloc = await getIt.getAsync<B>();
    }
    bloc.commonBloc = commonBloc;

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
          child: buildPageListeners(
            child: useLoadingIndicator
                ? buildPage(context)
                : Stack(
                    children: [
                      buildPage(context),
                      BlocBuilder<CommonBloc, CommonState>(
                        buildWhen: (previous, current) =>
                            previous.isLoading != current.isLoading,
                        builder: (context, state) => Visibility(
                          visible: state.isLoading,
                          child: buildPageLoading(),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const Center(child: AppDefaultLoading());

  Widget buildPage(BuildContext context);
}
