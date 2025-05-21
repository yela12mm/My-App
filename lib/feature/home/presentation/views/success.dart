import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Scaffold success() {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      unselectedItemColor: const Color.fromARGB(255, 245, 241, 205),
      selectedItemColor: const Color.fromARGB(255, 238, 236, 215),
      backgroundColor: Color.fromARGB(255, 236, 202, 224),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),

          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'search',
        ),
      ],
    ),
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
                offset: Offset(5.0, 5.0),
                blurRadius: 5.0,
                color: const Color.fromARGB(66, 0, 0, 0),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 236, 202, 224),
      actions: [
        IconButton(
          iconSize: 40.0,
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
          iconSize: 40.0,
          color: Color.fromARGB(255, 248, 243, 224),
          icon: Icon(Icons.settings_outlined),
          onPressed: () {},
        ),
        SizedBox(width: 10),
      ],
    ),

    body: Stack(
      children: [
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
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
      backgroundColor: Color.fromARGB(255, 239, 232, 201),
      onPressed: () {},
      child: Icon(Icons.add, color: Color.fromARGB(255, 175, 116, 174)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  );
}

Widget _buildBotonConLinea(IconData icono, String texto) {
  return Column(
    children: [
      SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 243, 241, 224),
          foregroundColor: const Color.fromARGB(255, 124, 121, 93),
          elevation: 5,
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icono,
                color: const Color.fromARGB(255, 224, 187, 216),
                size: 40,
              ),
              const SizedBox(width: 12),
              Container(
                height: 60,
                width: 1,
                color: const Color.fromARGB(255, 172, 169, 134),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(texto, style: const TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ),
      ),

      const Divider(
        height: 1,
        thickness: 1,
        color: Color.fromARGB(255, 169, 167, 129),
      ),
    ],
  );
}
