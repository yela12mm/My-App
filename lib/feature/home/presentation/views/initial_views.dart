import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Scaffold initial() {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 236, 202, 224),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'WELCOME',
            style: GoogleFonts.chewy(
              textStyle: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 241, 238, 212),
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Activa tu potencial: organiza tu día, recuerda tus tareas y alcanza tus metas.',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 248, 243, 224),
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Image.network(
          "https://i.imgur.com/z5yImr1.png ",
          width: 225,
          height: 225,
        ),
        SizedBox(height: 100),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 236, 232, 202),
            side: const BorderSide(color: Colors.black, width: 0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 20,
            shadowColor: Colors.black38,
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          ),
          onPressed: () {},
          child: Text(
            'Star Now',
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 175, 116, 174),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
