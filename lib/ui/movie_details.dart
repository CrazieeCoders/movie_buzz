import 'package:flutter/material.dart';
import 'package:movie_buzz/model/movie_details.dart';
import 'package:movie_buzz/themes/strings.dart';


class MovieDetailsPage extends StatelessWidget {

  MovieDetails movieDetails;

  MovieDetailsPage({this.movieDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.white,
                ),
                FadeInImage.assetNetwork(
                  placeholder: Style.placeholder_Img,
                  image: movieDetails.poster,
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 30,
                  left: 15,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios,
                        color: Colors.orangeAccent,
                        size: 24,),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 440,
                  right: 20,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.favorite,
                      size: 30.0,
                      color: Colors.orange,),
                  ),
                ),

                SizedBox(
                  height: 30,
                )
              ],
            ),

           

            Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: Text(
                '${movieDetails.title}',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('plot : ',
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
                  child: Text('${movieDetails.plot}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
            //Language
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('language : ',
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
                  child: Text('${movieDetails.language}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
             //Released
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('released : ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      color: Colors.orange.withOpacity(0.5)
                  ),),
                SizedBox(
                  width: 20,
                ),
                Text('${movieDetails.released}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),)
              ],
            ),
            //Genre
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('genre : ',
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
                  child: Text('${movieDetails.genre}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
            //Director
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('director : ',
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
                  child: Text('${movieDetails.director}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
            //actor
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('actor : ',
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
                  child: Text('${movieDetails.actors}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
            //Writer
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('writer : ',
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
                  child: Text('${movieDetails.writer}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
            //Rated
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('rated : ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      color: Colors.orange.withOpacity(0.5)
                  ),),
                SizedBox(
                  width: 20,
                ),
                Text('${movieDetails.rated}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),)
              ],
            ),
            // Awards
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('awards : ',
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
                  child: Text('${movieDetails.awards}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
            //Country
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('country : ',
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
                  child: Text('${movieDetails.country}',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),),
                )
              ],
            ),
            //Year
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('year : ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      color: Colors.orange.withOpacity(0.5)
                  ),),
                SizedBox(
                  width: 20,
                ),
                Text('${movieDetails.year}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),)
              ],
            ),
            //Runtime
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('runtime : ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      color: Colors.orange.withOpacity(0.5)
                  ),),
                SizedBox(
                  width: 20,
                ),
                Text('${movieDetails.runtime}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),)
              ],
            ),



          ],
        ),
      ),

    );
  }
}
