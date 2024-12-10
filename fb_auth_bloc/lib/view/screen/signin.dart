import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_reaction_outlined),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.signup.path);
            },
          ),
        ],
      ),
    );
  }
}
