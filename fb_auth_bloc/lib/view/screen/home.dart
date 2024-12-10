import 'package:fb_auth_bloc/bloc/auth/auth.dart';
import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.profile.path);
              },
              icon: Icon(Icons.account_circle),
            ),
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(SignoutRequestEvent());
              },
              icon: Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
