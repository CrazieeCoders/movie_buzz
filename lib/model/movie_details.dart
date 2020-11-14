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
  String metaScore;
  String imdbRating;
  String imdbVotes;
  String types;
  String totalSeasons;
  List<Rating> ratings;


  MovieDetails({this.title,this.year,this.released,this.runtime,this.genre,this.director,
    this.actors,this.language,this.poster,this.plot,
    this.rated,this.writer,this.country,this.awards,
    this.metaScore,this.imdbRating,this.imdbVotes,this.types,this.totalSeasons,
    this.ratings});

 factory MovieDetails.fromJson(Map<String,dynamic> parsedJson){

   var list = parsedJson['Ratings'] as List;
   List<Rating> ratingList = list.map((i)=>Rating.fromJson(i)).toList();

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
     awards: parsedJson['awards'],
     metaScore: parsedJson['Metascore'],
     imdbRating: parsedJson['imdbRating'],
     imdbVotes: parsedJson['imdbVotes'],
     types: parsedJson['Type'],
     totalSeasons: parsedJson['totalSeasons'],
     ratings: ratingList,
   );

 }

}

class Rating{
  String source;
  String value;

  Rating({this.source,this.value});

  factory Rating.fromJson(Map<String,dynamic> parsedJson){
    return Rating(
      source: parsedJson['Source'],
      value: parsedJson['Value'],
    );
  }
}