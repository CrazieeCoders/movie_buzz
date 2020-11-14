import 'package:flutter/material.dart';
import 'package:movie_buzz/model/movie_details.dart';
import 'package:movie_buzz/themes/strings.dart';

import 'movie_detail_lowerpart.dart';


class MovieDetailsPage extends StatelessWidget {

  MovieDetails movieDetails;

  MovieDetailsPage({this.movieDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,

      body: Stack(
       children: <Widget>[
         CustomScrollView(
           slivers: <Widget>[
             SliverAppBar(
               expandedHeight: 500,
               leading: GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 30,
                     width: 30,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Colors.white
                     ),
                     child: Center(
                       child: Icon(Icons.arrow_back_ios,
                         color: Colors.orange,
                         size: 20,),
                     ),
                   ),
                 ),
               ),
               flexibleSpace: FlexibleSpaceBar(
                 background: Stack(
                   children: <Widget>[
                     FadeInImage.assetNetwork(
                       placeholder:Style.placeholder_Img,
                       image: movieDetails.poster,
                       height: 600.0,
                       width: MediaQuery.of(context).size.width,
                       fit: BoxFit.fill,
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
                           color: Colors.orange.withOpacity(0.5),),
                       ),
                     ),
                   ],
                 ),
               ),
             ),

             SliverList(
               delegate: SliverChildListDelegate(
                 <Widget>[

                   Container(
                     
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.only(
                               topRight: Radius.circular(75.0),
                               topLeft: Radius.circular(75.0)
                           )
                       ),
                       child:MovieDescription(movieDetails: movieDetails),

                     ),
                   ),


                 ],
               ),

             ),
           ],
         ),
       ],
      ),
    );
  }
}
