part of 'common_bloc.dart';

@freezed
class CommonState with _$CommonState {
  const factory CommonState({
    @Default(false) bool isLoading,
    @Default(0) int loadingCount,
    AppExceptionWrapper? appExceptionWrapper,
  }) = _CommonState;
}
