import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/features/oboarding/screens/personal_details_screen.dart';
import 'package:quiz_app_flutter/features/oboarding/screens/splash_screen.dart';
import 'package:quiz_app_flutter/features/quiz/presentation/screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const SplashScreen(),
            );
          case '/profile':
            return MaterialPageRoute(
              builder: (context) => const PersonalDetailsScreen(),
            );

          case '/quiz':
            return MaterialPageRoute(
              builder: (context) => const QuizScreen(),
            );
          default:
            return MaterialPageRoute(
                builder: (context) => const SplashScreen());
        }
      },
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 178, 137, 248),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(
              MediaQuery.of(context).size.width * 0.75,
              50,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: Color.fromARGB(255, 178, 137, 248),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 178, 137, 248),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 178, 137, 248)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
