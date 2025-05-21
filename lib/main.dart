import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                child: CachedNetworkImage(
                  imageUrl:
                      'https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2ducDZqeTFtYmJhZnFjcHA3OG1sbno5bXo5djEzZnA0aHFpYnBmNCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/daIsRoPfRBC2fm3lIe/giphy.gif',
                  width: 225,
                  height: 225,
                  fit: BoxFit.contain,
                  placeholder:
                      (context, url) =>
                          Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  imageBuilder:
                      (context, imageProvider) => Image(
                        image: imageProvider,
                        repeat:
                            ImageRepeat
                                .repeat, // Esto hace que el GIF se repita en bucle
                        width: 225,
                        height: 225,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
