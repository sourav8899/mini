import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_2/variables.dart';

class intropage4 extends StatefulWidget {
  const intropage4({super.key});

  @override
  State<intropage4> createState() => _intropage4State();
}

class _intropage4State extends State<intropage4> {
  @override
  Widget build(BuildContext context) {
    final _textcontroller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Enter your Name:",
            style: GoogleFonts.notoSansMono(
              color: Color.fromARGB(255, 90, 173, 20),
              fontWeight: FontWeight.w900,
              fontSize: 35,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 6.0),
                  blurRadius: 15.0,
                  color: Color.fromARGB(255, 197, 229, 204),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            onChanged: (value) {
              name = value;
            },
            decoration: InputDecoration(border: OutlineInputBorder()),
          )
        ]),
      ),
    );
  }
}
