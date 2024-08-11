import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_bloc.dart';
import 'package:shoping_app_bloc/blocs/auth/auth_state.dart';
import 'package:shoping_app_bloc/utils/constant/strings.dart';
import 'package:shoping_app_bloc/utils/custom/app_custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state as AuthSuccess;
    return Scaffold(
      appBar: const CustomAppBar(title: Strings.home),
      body: Center(
        child: Text(authState.uid),
      ),
    );
  }
}
