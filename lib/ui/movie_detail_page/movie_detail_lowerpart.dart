import 'package:flutter/material.dart';
import 'package:movie_buzz/model/movie_details.dart';
import 'package:movie_buzz/themes/size_config.dart';
import 'package:movie_buzz/themes/style.dart';

class MovieDescription extends StatefulWidget {

  MovieDetails movieDetails;

  MovieDescription({this.movieDetails});

  @override
  _MovieDescriptionState createState() => _MovieDescriptionState();
}

class _MovieDescriptionState extends State<MovieDescription> {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70.withOpacity(0.5),width: 2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height + 24.39 * SizeConfig.heightMultiplier,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
              child: Text(
                '${widget.movieDetails.title}',
                style: Style.movieHeaderStyle,
              ),
            ),

            SizedBox(
              height: 2.43 * SizeConfig.heightMultiplier,
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
            movieDetails('metascore', widget.movieDetails.metaScore),
            movieDetails('imdbRating', widget.movieDetails.imdbRating),
            movieDetails('imdbVotes', widget.movieDetails.imdbVotes),
            // Ratings
            SizedBox(
              height: 1.21 * SizeConfig.heightMultiplier,
            ),
            Text('Ratings',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),),


            ratingList(widget.movieDetails.ratings),


            movieDetails('type', widget.movieDetails.types),
            movieDetails('totalseasons', widget.movieDetails.totalSeasons),

            SizedBox(
              height: 1.21 * SizeConfig.heightMultiplier,
            ),


          ],
        ),
      ),
    );
  }

  Widget movieDetails(String header,String description){
    return Column(
      children: <Widget>[
        SizedBox(
          height: 1.21 * SizeConfig.heightMultiplier,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 4.86 * SizeConfig.widthMultiplier,
            ),
            Text('$header : ',
              style: Style.movieDetail,),
            SizedBox(
              width: 4.86 * SizeConfig.widthMultiplier,
            ),
            Expanded(
              child: Text('$description',
                style: Style.movieDetailInfo,),
            )
          ],
        ),
      ],
    );
  }

  Widget ratingList(List<Rating> ratinglist){
        final children = <Widget>[];

      for(int i=0;i<ratinglist.length;i++) {
        children.add(Column(
          children: <Widget>[
            Row(
              children: <Widget>[

                Text('source : ',
                  style:Style.movieDetail),
                SizedBox(
                  width: 4.86 * SizeConfig.widthMultiplier,
                ),
                Text('${ratinglist[i].source}',
                  style: Style.movieDetailInfo),
              ],
            ),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Text('value : ',
                  style: Style.movieDetail),
                SizedBox(
                  width: 4.86 * SizeConfig.widthMultiplier,
                ),
                Text('${ratinglist[i].value}',
                  style: Style.movieDetailInfo,)
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
