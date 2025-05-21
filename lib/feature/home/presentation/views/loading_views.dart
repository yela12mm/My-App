import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:gif/gif.dart';

Scaffold loading() {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 236, 202, 224),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: Loading,
      ),
    ),
  );
}

List<Widget> get Loading {
  return [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Cargando',
          style: GoogleFonts.nunito(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 248, 243, 224),
              shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 1.0,
                  color: Colors.black26,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        LoadingAnimationWidget.waveDots(
          color: const Color.fromARGB(255, 248, 243, 224),
          size: 24,
        ),
      ],
    ),

    const SizedBox(height: 50),
    Opacity(
      opacity: 0.7,
      child: Gif(
        image: NetworkImage(
          'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2ducDZqeTFtYmJhZnFjcHA3OG1sbno5bXo5djEzZnA0aHFpYnBmNCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/daIsRoPfRBC2fm3lIe/giphy.gif',
        ),
        width: 225,
        height: 225,
        autostart: Autostart.loop,
        fit: BoxFit.contain,
      ),
    ),
    SizedBox(height: 50),
    Text(
      'Por favor espere un momento',
      style: GoogleFonts.nunito(
        textStyle: const TextStyle(
          fontSize: 20,

          color: Color.fromARGB(255, 248, 243, 224),
          shadows: [
            Shadow(
              offset: Offset(0.5, 0.5),
              blurRadius: 0.5,
              color: Colors.black26,
            ),
          ],
        ),
      ),
    ),
  ];
}
