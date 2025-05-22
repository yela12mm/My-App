import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timebox/feature/home/presentation/bloc/home_bloc.dart';
import 'package:timebox/feature/home/presentation/views/failure_views.dart';
import 'package:timebox/feature/home/presentation/views/initial_views.dart';
import 'package:timebox/feature/home/presentation/views/loading_views.dart';
import 'package:timebox/feature/home/presentation/views/success_views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        title: 'My APP',
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSuccess) {
              return Success();
            } else if (state is HomeLoadInProgress) {
              return loading();
            } else if (state is HomeLoadFailure) {
              return failure();
            }
            return Initial();
          },
        ),
      ),
    );
  }
}
