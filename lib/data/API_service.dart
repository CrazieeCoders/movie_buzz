import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_buzz/exception/custom_exception.dart';
import 'package:movie_buzz/model/error_model.dart';
import 'package:movie_buzz/model/movie_details.dart';
import 'package:movie_buzz/model/movie_model.dart';
import 'package:movie_buzz/model/title_model.dart';

class APIService{

  static const API_KEY = "71ca53b93cmsh85f028cd23b747ap12f87bjsn74227b5a53c0";
  static const String _baseUrl = "rapidapi.p.rapidapi.com";
  static const String endpoint = '/';

  static const Map<String,String> _headers ={
    "content-type": "application/json",
    "x-rapidapi-host": "movie-database-imdb-alternative.p.rapidapi.com",
    "x-rapidapi-key": API_KEY,
  };
  


  Future<List<Movie>>  get({@required String movieName})async{
    Map<String,String> query={
      "s": movieName,
      "page": "1",
      "r": "json"
    };
    var responseJson;
    Uri uri = Uri.https(_baseUrl,endpoint,query);

    try {
      final response = await http.get(uri, headers: _headers);
      responseJson = _returnResponse(response);
      print('$responseJson');

      final title = getTitleFromJson(responseJson);

      print('Title:${title.response}');
      if(title.response=="False"){
        print('${title.response}');
      }
      return title.search;

    }on SocketException {
          throw FetchDataException(":No Internet Connection");
    }

  }

  Future<MovieDetails> getMovieDetails({@required String imdbID})async{
    Map<String,String> query={
      "i": imdbID,
      "r": "json"
    };
    Uri uri = Uri.https(_baseUrl, endpoint,query);

    final response = await http.get(uri,headers: _headers);

    if(response.statusCode == 200){
      MovieDetails movieDetails = getMovieDetailsFromJson(response.body);
      print('${response.body}');
      return movieDetails;
    }else{
      print("error");
      return null;
    }


  }




  static _returnResponse(http.Response response){

     switch(response.statusCode){
        case 200:
          print("The response in switch Case:${response.body}");
          var error = ErrorMovie.fromJson(jsonDecode(response.body));

          if(error.response == "False"){
            throw MovieNotFoundException(error.error);
          }else {
            return response.body;
          }
        break;

        case 400:
           throw BadRequestException(response.body.toString());
           break;

        case 403:
            throw UnAuthorisedException(response.body.toString());
            break;

        case 404:
             throw URLNotAvailable(response.body.toString());
             break;
       default:
              throw FetchDataException("Error occured while communicating with Server:${response.statusCode}");
              break;
     }


  }



}