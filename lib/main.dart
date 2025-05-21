import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timebox/feature/home/presentation/views/fealure.dart';
import 'package:timebox/feature/home/presentation/views/initial_views.dart';
import 'package:timebox/feature/home/presentation/views/loading.dart';
import 'package:timebox/feature/home/presentation/views/success.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(home: Scaffold());
      },
    );
  }
}
