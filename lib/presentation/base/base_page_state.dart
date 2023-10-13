import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/configs/configs.dart';
import '../../core/mixins/log_mixin.dart';
import '../common_widgets/loading.dart';
import 'bloc/base_bloc.dart';
import 'bloc/common/common_bloc.dart';

abstract class BasePageState<P extends StatefulWidget, B extends BaseBloc> extends State<P> with LogMixin {
  late final CommonBloc commonBloc;
  late final B bloc;

  late Future<dynamic> _initBLocsFeature;

  bool get useLoadingIndicator => false;

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _initBLocsFeature = _initBlocs();
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: _initBLocsFeature,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: AppDefaultLoading(),
          );
        }

        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => bloc),
            BlocProvider(create: (_) => commonBloc),
          ],
          child: buildPageListeners(
            child: useLoadingIndicator
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
      },
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const Center(child: AppDefaultLoading());

  Widget buildPage(BuildContext context);

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
