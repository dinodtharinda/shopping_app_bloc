import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_bloc.dart';
import 'package:shoping_app_bloc/screens/auth/sign_in_screen.dart';
import 'package:shoping_app_bloc/utils/themes/themes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(),
          ),
         
        ],
        child: const SignInScreen(),
      ),
    ),
  );
}
