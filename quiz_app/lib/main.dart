import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 89, 89, 89),
        Color.fromARGB(255, 69, 69, 69)
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    )),
    child: const MainTheme(),
  ))));
}

class MainTheme extends StatelessWidget {
  const MainTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 235,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Text Your General Knowledge',
            style: TextStyle(
              fontFamily: GoogleFonts.bebasNeue(
                fontWeight: FontWeight.normal,
              ).fontFamily,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {
                debugPrint('Recieved click');
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 234, 255),
                ),
              ))
        ],
      ),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(children: []);
  }
}
