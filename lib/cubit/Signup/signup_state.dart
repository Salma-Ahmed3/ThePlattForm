abstract class SignUpState {
  const SignUpState();
}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final String message;

  const SignUpSuccess({
    required this.message,
  });
}

class SignUpFailure extends SignUpState {
  final String error;

  const SignUpFailure({
    required this.error,
  });
}
