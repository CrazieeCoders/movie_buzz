import 'dart:convert';

import 'movie_model.dart';

MovieTitle getTitleFromJson(String str) => MovieTitle.fromJson(jsonDecode(str));

class MovieTitle{
  List<Movie> search ;
  String totalResults;
  String response;

  MovieTitle({this.search,this.totalResults,this.response});


  factory MovieTitle.fromJson(Map<String,dynamic> parsedJson){

    var list = parsedJson['Search'] as List;

    print("List:$list");

    List<Movie> searchList = list.map((i) =>Movie.fromJson(i)).toList();

    return MovieTitle(
      search: searchList,
      totalResults: parsedJson['totalResults'],
      response: parsedJson['Response'],

    );
  }



}