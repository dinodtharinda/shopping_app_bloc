import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_event.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthInitialEvent>(authInitialEvent);
    on<AuthSignInButtonClickedEvent>(authSignInButtonClickedEvent);
  }

  FutureOr<void> authInitialEvent(
    AuthInitialEvent event,
    Emitter<AuthState> emit,
  ) {}

  void authSignInButtonClickedEvent(
    AuthSignInButtonClickedEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(AuthLoading());
      final email = event.email;
      final password = event.password;

      //email validation
      if (password.length < 6) {
        emit(
          AuthFailure(error: "Password cannot be less than 6 characters"),
        );
        return;
      }
      await Future.delayed(
        const Duration(seconds: 1),
        () {
          return emit(
            AuthSuccess(uid: '$email-$password'),
          );
        },
      );
    } catch (e) {
      emit(
        AuthFailure(
          error: e.toString(),
        ),
      );
    }
  }
}
