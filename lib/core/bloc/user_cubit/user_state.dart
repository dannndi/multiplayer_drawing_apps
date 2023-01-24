part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default("") String username,
  }) = _UserState;
}
