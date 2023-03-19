
abstract class AuthState {}

class AuthInitial extends AuthState {}


class RegisterLoading extends AuthState {}
class RegisterSuccess extends AuthState {}
class RegisterError extends AuthState {
  final String error;

  RegisterError({required this.error});
}
