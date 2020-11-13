class ErrorMovie{
  String response;
  String error;

  ErrorMovie({this.response,this.error});

  factory ErrorMovie.fromJson(Map<String,dynamic> paredJson){

    return ErrorMovie(
      response: paredJson['Response'],
      error: paredJson['Error'],
    );

  }

}