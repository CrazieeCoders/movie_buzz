import 'package:flutter/material.dart';
import 'package:movie_buzz/model/movie_details.dart';

class MovieDescription extends StatefulWidget {

  MovieDetails movieDetails;

  MovieDescription({this.movieDetails});

  @override
  _MovieDescriptionState createState() => _MovieDescriptionState();
}

class _MovieDescriptionState extends State<MovieDescription> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
          child: Text(
            '${widget.movieDetails.title}',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 27.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),
        movieDetails('plot',widget.movieDetails.plot),
        movieDetails('language',widget.movieDetails.language),
        movieDetails('released',widget.movieDetails.released),
        movieDetails('genre',widget.movieDetails.genre),
        movieDetails('director',widget.movieDetails.director),
        movieDetails('actor',widget.movieDetails.actors),
        movieDetails('writer',widget.movieDetails.writer),
        movieDetails('rated',widget.movieDetails.rated),
        movieDetails('awards',widget.movieDetails.awards),
        movieDetails('country',widget.movieDetails.country),
        movieDetails('year',widget.movieDetails.year),
        movieDetails('runtime', widget.movieDetails.runtime),
        movieDetails('runtime', widget.movieDetails.metaScore),
        movieDetails('imdbRating', widget.movieDetails.imdbRating),
        movieDetails('imdbVotes', widget.movieDetails.imdbVotes),
        // Ratings
        SizedBox(
          height: 10,
        ),
        Text('Ratings',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),),


        ratingList(widget.movieDetails.ratings),
       // ratingList(widget.movieDetails.ratings[1]),
       // movieDetails('source', widget.movieDetails.ratings[0].source),
       // movieDetails('value', widget.movieDetails.ratings[0].value),

        movieDetails('type', widget.movieDetails.types),
        movieDetails('totalseasons', widget.movieDetails.totalSeasons),




      ],
    );
  }

  Widget movieDetails(String header,String description){
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 20.0,
            ),
            Text('$header : ',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.italic,
                  fontSize: 14.0,
                  color: Colors.orange.withOpacity(0.5)
              ),),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text('$description',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),),
            )
          ],
        ),
      ],
    );
  }

  Widget ratingList(List<Rating> ratinglist){
        print('Rating List Lenght : ${ratinglist.length}');

        final children = <Widget>[];

      for(int i=0;i<ratinglist.length;i++) {

        print('${ratinglist[i].source}');

        children.add(Column(
          children: <Widget>[
            Row(
              children: <Widget>[

                Text('source : ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      color: Colors.orange.withOpacity(0.5)
                  ),),
                SizedBox(
                  width: 20,
                ),
                Text('${ratinglist[i].source}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),),
              ],
            ),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Text('value : ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      color: Colors.orange.withOpacity(0.5)
                  ),),
                SizedBox(
                  width: 20,
                ),
                Text('${ratinglist[i].value}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),)
              ],
            ),
          ],
        ));
      }
      return Container(
        padding: EdgeInsets.only(left: 20,top: 5.0),
        child: Column(
          children: children,
        ),
      );

  }

}
