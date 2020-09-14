part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.allHomeDataOption(
      Option<Either<AuthenticationFailure, List<dynamic>>> dataOption) = _RequestAllData;
  const factory HomeState.isLoading() = _IsLoading;
}
