import 'package:email_validator/email_validator.dart';
import 'package:fb_auth_bloc/bloc/signin/signin_bloc.dart';
import 'package:fb_auth_bloc/bloc/signin/signin_state.dart';
import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:fb_auth_bloc/util/util.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? _email, _password;

  void _submit() {
    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });

    final form = _formKey.currentState;

    if (form == null || !form.validate()) return;

    form.save();

    context.read<SigninBloc>().add(
          SigninRequestEvent(
            email: _email!,
            password: _password!,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: BlocConsumer<SigninBloc, SigninState>(
        listener: (context, state) {
          if (state.status == SigninStatus.failure) {
            errorDialog(context, state.customError);
          }
        },
        builder: (context, state) {
          final loading = state.status == SigninStatus.loading;
          return PopScope(
            canPop: false,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Sign in'),
                automaticallyImplyLeading: false,
              ),
              body: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: _autovalidateMode,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Image.asset(
                          'assets/images/flutter_logo.png',
                          width: 250,
                          height: 250,
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
                          onPressed: loading
                              ? null
                              : () => Navigator.of(context)
                                  .pushNamed(Routes.signup.path),
                          child: Text('Not a member? Sign up'),
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                        )
                      ],
                    ),
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
