import 'package:flutter/material.dart';

@immutable
abstract class AuthEvent {}

class AuthInitialEvent extends AuthEvent {}

class AuthSignInButtonClickedEvent extends AuthEvent {
  final String email;
  final String password;

  AuthSignInButtonClickedEvent({
    required this.email,
    required this.password,
  });
}
