import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_buzz/bloc/movie_bloc.dart';
import 'package:movie_buzz/bloc/movie_states.dart';
import 'package:movie_buzz/ui/movie_buzz.dart';
import 'package:movie_buzz/ui/movie_loaded_page.dart';
import 'package:movie_buzz/ui/movie_loading_page.dart';


import 'movie_buzz.dart';


class MovieBuzz extends StatefulWidget {
  @override
  _MovieBuzzState createState() => _MovieBuzzState();
}

class _MovieBuzzState extends State<MovieBuzz> {



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: BlocBuilder<MovieBloc,MovieState>(
         builder: (context,state){
           if(state is InitialState){
             return InitialWidget();
           }else if(state is LoadingState){
             return LoadingPage();
           }else if(state is LoadedState) {
             return LoadedWidget(movieList: state.movieList,);
           }else if(state is ErrorState){
             return InitialWidget(errorMsg: state.message,);
           }else {
             return Center(child: Container(child: Text("No entry found"),));
           }
         },
      ),
    );
  }


}