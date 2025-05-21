import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Scaffold loading() {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 236, 202, 224),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Cargando',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 30,
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
                LoadingAnimationWidget.waveDots(
                  color: const Color.fromARGB(255, 248, 243, 224),
                  size: 24,
                ),
              ],
            ),
          ),

          SizedBox(height: 50),
          Opacity(
            opacity: 0.7,
            child: Image.network(
              alignment: Alignment.center,
              height: 225,
              width: 225,
              'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2ducDZqeTFtYmJhZnFjcHA3OG1sbno5bXo5djEzZnA0aHFpYnBmNCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/daIsRoPfRBC2fm3lIe/giphy.gif',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value:
                        loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error);
              },
            ),
          ),
        ],
      ),
    ),
  );
}
