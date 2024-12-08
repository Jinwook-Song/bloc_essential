import 'package:flutter/material.dart';
import 'package:weather_cubit/view/view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppEnv {
  OPEN_WEATHER_API_KEY,
}

Future<void> main() async {
  await dotenv.load(fileName: ".env");

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
      home: HomeScreen(),
    );
  }
}
