import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_buzz/bloc/movie_bloc.dart';
import 'package:movie_buzz/bloc/movie_events.dart';
import 'package:movie_buzz/data/API_service.dart';
import 'package:movie_buzz/model/movie_details.dart';
import 'package:movie_buzz/model/movie_model.dart';
import 'package:movie_buzz/themes/strings.dart';
import 'package:movie_buzz/ui/movie_details.dart';


class LoadedWidget extends StatelessWidget {

  List<Movie> movieList;
  MovieBloc movieBloc;
  //needs to be removed
  APIService _apiService = APIService();
  MovieDetails _movieDetails;

  LoadedWidget({@required this.movieList});

  @override
  Widget build(BuildContext context) {
    movieBloc = BlocProvider.of<MovieBloc>(context) ;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange.withOpacity(0.5),
        centerTitle: true,
        title: Text('Movies',
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.blueGrey,
        ),),
        leading: GestureDetector(
            onTap: (){
              movieBloc.add(ResetEvent());
            },
            child: Icon(Icons.arrow_back_ios,
            size: 35.0,
            color: Colors.blueGrey,),),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (context,int index){
            Movie movie = movieList[index];
            return buildListView(movie,context);
          },
        ),
      ),
    );
  }

  Widget buildListView(Movie movie,BuildContext context){
    return Card(
      elevation: 2.0,
      child: ListTile(
        onTap: ()async{

          // code chnages have to be made

          _movieDetails =  await _apiService.getMovieDetails(imdbID: movie.imdbID);

          Navigator.push(context, MaterialPageRoute(
            builder: ((context)=>MovieDetailsPage(movieDetails: _movieDetails,)),
          ));
        },
        title: Text(movie.title,
        style: TextStyle(
          fontFamily: 'Montserrat',
        ),),
        subtitle: Text(movie.year,
        style: TextStyle(
          fontFamily: 'Montserrat',
        ),),
        dense: false,
        leading: FadeInImage.assetNetwork(
          placeholder:Style.placeholder_Img,
          image:movie.url,
          width: 50,
        ),
      ),
    );
  }
}