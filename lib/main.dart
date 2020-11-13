import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_buzz/bloc/movie_bloc.dart';
import 'package:movie_buzz/ui/movie_buzz_bloc.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: BlocProvider(
        builder: (context)=>MovieBloc(),
          child: MovieBuzz()),
    );
  }
}


