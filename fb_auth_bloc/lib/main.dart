import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:fb_auth_bloc/firebase_options.dart';
import 'package:fb_auth_bloc/view/screen/splash.dart';
import 'package:fb_auth_bloc/view/view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        Routes.signup.path: (context) => SignupScreen(),
        Routes.signin.path: (context) => SigninScreen(),
        Routes.home.path: (context) => HomeScreen(),
      },
    );
  }
}
