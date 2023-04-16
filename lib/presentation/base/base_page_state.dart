import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/config/config.index.dart';
import '../../core/mixin/log_mixin.dart';
import '../common_blocs/app/app_bloc.dart';
import 'bloc/base_bloc.dart';
import 'bloc/common/common_bloc.dart';

abstract class BasePageState<P extends StatefulWidget, B extends BaseBloc> extends State<P> with LogMixin {
  final AppBloc appBloc = getIt.get<AppBloc>();
  final CommonBloc commonBloc = getIt<CommonBloc>();

  late final B _bloc = getIt<B>()..commonBloc = commonBloc;

  B get bloc => _bloc;

  bool get isAppWidget => false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => bloc),
        BlocProvider(create: (_) => commonBloc),
      ],
      child: buildPageListeners(
        child: isAppWidget
            ? buildPage(context)
            : Stack(
                children: [
                  buildPage(context),
                  BlocBuilder<CommonBloc, CommonState>(
                    buildWhen: (previous, current) => previous.isLoading != current.isLoading,
                    builder: (context, state) => Visibility(
                      visible: state.isLoading,
                      child: buildPageLoading(),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget buildPage(BuildContext context);

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}
