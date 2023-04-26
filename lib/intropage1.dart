import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class intropage1 extends StatelessWidget {
  const intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 244, 239),
      body: SafeArea(
          child: Center(
        child: Column(children: [
          Image.asset("assets/images/17.png"),
          Container(
            child: Text(
              "WasteWizard",
              style: GoogleFonts.notoSansMono(
                color: Color.fromARGB(255, 90, 173, 20),
                fontWeight: FontWeight.w900,
                fontSize: 40,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 6.0),
                    blurRadius: 15.0,
                    color: Color.fromARGB(255, 197, 229, 204),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              child: Text(
                "Snap, Detect ,Save",
                style: GoogleFonts.notoSansMono(
                  color: Color.fromARGB(255, 90, 173, 20),
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45, right: 35, top: 20, bottom: 2),
            child: Text(
              "Team Members:Amiyanshu, Shreyashu, Shreyash, Sourav ",
              style: GoogleFonts.notoSansMono(
                  color: Color.fromARGB(255, 79, 131, 37),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 35, top: 35, bottom: 2),
            child: Text(
              "Project Incharge: Dr. Aparna .R ",
              style: GoogleFonts.notoSansMono(
                  color: Color.fromARGB(255, 79, 131, 37),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          )
        ]),
      )),
    );
  }
}
