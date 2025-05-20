import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 241, 224),
        appBar: AppBar(
          title: Text(
            'Mayo 16',
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Color.fromARGB(255, 246, 244, 226),
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
          backgroundColor: Color.fromARGB(255, 236, 202, 224),
          actions: [
            IconButton(
              iconSize: 30.0,
              color: Color.fromARGB(255, 248, 243, 224),
              icon: Icon(Icons.notifications_outlined),
              onPressed: () {},
            ),
            SizedBox(width: 10),
            IconButton(
              iconSize: 30.0,
              color: Color.fromARGB(255, 248, 243, 224),
              icon: Icon(Icons.calendar_today),
              onPressed: () {},
            ),
            SizedBox(width: 10),
            IconButton(
              iconSize: 30,
              color: Color.fromARGB(255, 248, 243, 224),
              icon: Icon(Icons.person_outlined),
              onPressed: () {},
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Stack(
          children: [
            Opacity(
              opacity: 0.1,
              child: Center(
                child: Image.network(
                  'https://i.imgur.com/z5yImr1.png ',
                  alignment: Alignment.center,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView(
              children: [
                _buildBotonConLinea(
                  Icons.access_alarm,
                  "Activa tu ritmo ideal: despierta, enfoca, respira. Tu día, en equilibrio.",
                ),
                _buildBotonConLinea(
                  Icons.assignment,
                  "Empieza tu día con claridad. Organiza tus tareas, prioriza lo importante y avanza con propósito.",
                ),
                _buildBotonConLinea(
                  Icons.star_border,
                  "Haz espacio para tus momentos favoritos. Anota, recuerda y celebra con intención.",
                ),
                _buildBotonConLinea(
                  Icons.notifications_none,
                  "Añade tareas o eventos que quieras recordar a tiempo.",
                ),
                _buildBotonConLinea(
                  Icons.water_drop_outlined,
                  "Hidratación, descansos o autocuidado.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildBotonConLinea(IconData access_alarm, String s) {}
}
