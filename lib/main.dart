import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_buzz/bloc/movie_bloc.dart';
import 'package:movie_buzz/themes/size_config.dart';
import 'package:movie_buzz/ui/movie_buzz_bloc.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        return  OrientationBuilder(
          builder: (context,orientation){
            SizeConfig().init(constraints,orientation);
            return  MaterialApp(
              title: 'Movie Search',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.orange,
              ),
              home: BlocProvider(
                  builder: (context)=>MovieBloc(),
                  child: MovieBuzz()),
            );
          },
        );
      },

    );
  }
}


