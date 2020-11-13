import 'package:bloc/bloc.dart';
import 'package:movie_buzz/bloc/movie_events.dart';
import 'package:movie_buzz/bloc/movie_states.dart';
import 'package:movie_buzz/data/API_service.dart';
import 'package:movie_buzz/model/movie_details.dart';
import 'package:movie_buzz/model/movie_model.dart';

class MovieBloc extends Bloc<MovieEvent,MovieState>{
  
  APIService _apiService = APIService();
  
  @override
  // TODO: implement initialState
  MovieState get initialState => InitialState();

  @override
  Stream<MovieState> mapEventToState(MovieEvent event) async*{
    // TODO: implement mapEventToState
    if(event is FetchEvent){
      
      try{
        yield LoadingState();
       List<Movie> movieList = await _apiService.get(movieName: event.movieName);
        yield LoadedState(movieList: movieList );


      }catch(e){
        yield ErrorState( message: e.toString());
      }
    }else if(event is ResetEvent){
      yield InitialState();
    }
  }



}