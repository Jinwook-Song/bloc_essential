import 'package:email_validator/email_validator.dart';
import 'package:fb_auth_bloc/bloc/signup/signup_bloc.dart';
import 'package:fb_auth_bloc/bloc/signup/signup_state.dart';
import 'package:fb_auth_bloc/util/util.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController _passwordController = TextEditingController();
  String? _name, _email, _password;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });

    final form = _formKey.currentState;

    if (form == null || !form.validate()) return;

    form.save();

    context.read<SignupBloc>().add(
          SignupRequestEvent(
            name: _name!,
            email: _email!,
            password: _password!,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.status == SignupStatus.failure) {
            errorDialog(context, state.customError);
          }
        },
        builder: (context, state) {
          final loading = state.status == SignupStatus.loading;
          return Scaffold(
            appBar: AppBar(
              title: Text('Sign in'),
            ),
            body: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: _formKey,
                  autovalidateMode: _autovalidateMode,
                  child: ListView(
                    shrinkWrap: true,
                    reverse: true,
                    children: [
                      Image.asset(
                        'assets/images/flutter_logo.png',
                        width: 250,
                        height: 250,
                      ),
                      Gap(20),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.account_box)),
                        validator: (name) {
                          if (name == null || name.trim().isEmpty) {
                            return 'Name is required';
                          }
                          if (name.length < 2) {
                            return 'Password must be at least 2 characters long';
                          }
                          return null;
                        },
                        onSaved: (name) {
                          _name = name;
                        },
                      ),
                      Gap(20),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                        ),
                        validator: (email) {
                          if (email == null || email.trim().isEmpty) {
                            return 'Email is required';
                          }
                          if (!EmailValidator.validate(email)) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                        onSaved: (email) {
                          _email = email;
                        },
                      ),
                      Gap(20),
                      TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock)),
                        validator: (password) {
                          if (password == null || password.trim().isEmpty) {
                            return 'Password is required';
                          }
                          if (password.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                        onSaved: (password) {
                          _password = password;
                        },
                      ),
                      Gap(20),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            labelText: 'Confirm Password',
                            prefixIcon: Icon(Icons.lock)),
                        validator: (password) {
                          if (password != _passwordController.text) {
                            return 'Passwords do not match';
                          }

                          return null;
                        },
                      ),
                      Gap(20),
                      ElevatedButton(
                        onPressed: loading ? null : _submit,
                        child: Text(loading ? 'loading...' : 'Sign in'),
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          shape: RoundedRectangleBorder(),
                        ),
                      ),
                      Gap(10),
                      TextButton(
                        onPressed: loading ? null : Navigator.of(context).pop,
                        child: Text('Already a member? Sign in'),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline),
                          padding: EdgeInsets.symmetric(vertical: 10),
                        ),
                      )
                    ].reversed.toList(),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
