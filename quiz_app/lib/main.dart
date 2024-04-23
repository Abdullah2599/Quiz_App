import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: MainTheme(
      Colors.red,
      Colors.pink,
    ),
  )));
}

class MainTheme extends StatelessWidget {
  const MainTheme(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: const Center(
        child: AppHome(),
      ),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 235,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Learn Flutter The Fun Way!',
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
        OutlinedButton(
            onPressed: () {
              debugPrint('Recieved click');
            },
            child: const Text('Start Quiz'))
      ],
    );
  }
}
