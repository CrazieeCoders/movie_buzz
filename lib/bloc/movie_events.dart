import 'package:equatable/equatable.dart';


abstract class MovieEvent extends Equatable{}

class FetchEvent extends MovieEvent{

  String movieName;

  FetchEvent({this.movieName});

  @override
  // TODO: implement props
  List<Object> get props => [movieName];
}

class ResetEvent extends MovieEvent{
  @override
  // TODO: implement props
  List<Object> get props => null;

}

