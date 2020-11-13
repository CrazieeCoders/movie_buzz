class Movie{
  String title;
  String year;
  String url;
  String imdbID;

  Movie({this.title,this.year,this.url,this.imdbID});

  factory Movie.fromJson(Map<String,dynamic> parsedJson){
    return Movie(
      title: parsedJson['Title'],
      year: parsedJson['Year'],
      url: parsedJson['Poster'],
      imdbID:parsedJson['imdbID'],
    );
  }


}
