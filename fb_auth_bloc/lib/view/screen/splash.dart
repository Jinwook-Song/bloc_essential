import 'package:fb_auth_bloc/bloc/auth/auth.dart';
import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state.authStatus) {
          case AuthStatus.authenticated:
            Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.home.path,
              (route) =>
                  route.settings.name == ModalRoute.of(context)!.settings.name,
            );
            break;
          case AuthStatus.unauthenticated:
            Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.signin.path,
              (route) =>
                  route.settings.name == ModalRoute.of(context)!.settings.name,
            );

            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
