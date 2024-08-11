import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_bloc.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_event.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_state.dart';
import 'package:shoping_app_bloc/helper/show_snackbar_message.dart';
import 'package:shoping_app_bloc/utils/custom/app_custom_widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            showSnackBarMessage(context, state.error,isError: true);
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomField(
              controller: emailController,
              icon: Icons.mail,
            ),
            CustomPasswordField(
              controller: passwordController,
              icon: Icons.password,
            ),
            CustomButton(
              title: "Sign In",
              onTap: () {
                context.read<AuthBloc>().add(
                      AuthSignInButtonClickedEvent(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      ),
                    );
              },
            )
          ],
        ),
      ),
    );
  }
}
