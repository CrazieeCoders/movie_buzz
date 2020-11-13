import 'dart:convert';

MovieDetails getMovieDetailsFromJson(String str) => MovieDetails.fromJson(jsonDecode(str));

class MovieDetails{

  String title;
  String year;
  String released;
  String runtime;
  String genre;
  String director;
  String actors;
  String language;
  String poster;
  String plot;
  String rated;
  String writer;
  String country;
  String awards;

  MovieDetails({this.title,this.year,this.released,this.runtime,this.genre,this.director,
    this.actors,this.language,this.poster,this.plot,
    this.rated,this.writer,this.country,this.awards});

 factory MovieDetails.fromJson(Map<String,dynamic> parsedJson){

   return MovieDetails(
     title: parsedJson['Title'],
     year: parsedJson['Year'],
     released: parsedJson['Released'],
     runtime: parsedJson['Runtime'],
     genre: parsedJson['Genre'],
     director: parsedJson['Director'],
     actors: parsedJson['Actors'],
     language: parsedJson['Language'],
     poster: parsedJson['Poster'],
     plot:parsedJson['Plot'],
     rated: parsedJson['Rated'],
     writer: parsedJson['Writer'],
     country:parsedJson['Country'],
     awards: parsedJson['awards']
   );

 }

}