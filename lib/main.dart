import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            Column(
              children: [
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                        255,
                        248,
                        243,
                        224,
                      ).withOpacity(0.8),
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 181, 174, 128),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    SizedBox(width: 12),
                    Container(
                      width: 1,
                      height: 50,
                      color: const Color.fromARGB(255, 181, 174, 128),
                    ),
                    Expanded(
                      child: Text(
                        'Activa tu ritmo ideal: despierta, enfoca, respira. Tu día, en equilibrio',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown[900],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 243, 224).withOpacity(0.8),
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 181, 174, 128),
                        width: 1,
                      ),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Icon(Icons.list_alt),
                    SizedBox(width: 12),
                    Container(
                      width: 1,
                      height: 50,
                      color: const Color.fromARGB(255, 181, 174, 128),
                    ),

                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Activa tu ritmo ideal: despierta, enfoca, respira. Tu día, en equilibrio',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
