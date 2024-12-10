import 'package:fb_auth_bloc/bloc/bloc.dart';
import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:fb_auth_bloc/firebase_options.dart';
import 'package:fb_auth_bloc/repository/auth.dart';
import 'package:fb_auth_bloc/view/view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            FirebaseAuth.instance,
          ),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(
              context.read<AuthRepository>(),
            ),
          ),
          BlocProvider<SigninBloc>(
            create: (context) => SigninBloc(
              context.read<AuthRepository>(),
            ),
          ),
          BlocProvider<SignupBloc>(
            create: (context) => SignupBloc(
              context.read<AuthRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
          ),
          initialRoute: Routes.splash.path,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/splash':
                return MaterialPageRoute(builder: (_) => SplashScreen());
              case '/signup':
                return MaterialPageRoute(builder: (_) => SignupScreen());
              case '/signin':
                return MaterialPageRoute(builder: (_) => SigninScreen());
              case '/':
                return MaterialPageRoute(builder: (_) => HomeScreen());
              case '/profile':
                return MaterialPageRoute(builder: (_) => ProfileScreen());
            }
            return null;
          },
        ),
      ),
    );
  }
}
