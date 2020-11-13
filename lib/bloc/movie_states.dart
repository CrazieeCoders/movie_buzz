import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_buzz/model/movie_model.dart';

abstract class MovieState extends Equatable{}


class InitialState extends MovieState{
  String errorMsg;

  InitialState({this.errorMsg});
  @override
  // TODO: implement props
  List<Object> get props => [errorMsg];
}

class LoadingState extends MovieState{
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class LoadedState extends MovieState{

  List<Movie> movieList;

  LoadedState({@required this.movieList});

  @override
  // TODO: implement props
  List<Object> get props => movieList;

}

class MovieDetailState extends MovieState{
  @override
  // TODO: implement props
  List<Object> get props => null;

}


class ErrorState extends MovieState{

  String message;
  ErrorState({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => null;

}