import 'package:flutter/material.dart';
import 'package:movie_buzz/model/movie_details.dart';
import 'package:movie_buzz/themes/images.dart';
import 'package:movie_buzz/themes/size_config.dart';


import 'movie_detail_lowerpart.dart';


class MovieDetailsPage extends StatelessWidget {

  MovieDetails movieDetails;

  MovieDetailsPage({this.movieDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white70,

      body: Stack(
       children: <Widget>[
         CustomScrollView(
           slivers: <Widget>[
             SliverAppBar(
               pinned: false,
               floating: false,
               expandedHeight: 62.5 * SizeConfig.heightMultiplier,
               leading: GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 3.65 * SizeConfig.heightMultiplier,
                     width: 7.29 * SizeConfig.widthMultiplier,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Colors.white
                     ),
                     child: Center(
                       child: Icon(Icons.arrow_back_ios,
                         color: Colors.orange,
                         size: 2.4 * SizeConfig.heightMultiplier,),
                     ),
                   ),
                 ),
               ),
               flexibleSpace: FlexibleSpaceBar(
                 background: Stack(
                   children: <Widget>[
                     FadeInImage.assetNetwork(
                       placeholder:Images.placeholder_Img,
                       image: movieDetails.poster,
                       height: 73.17 * SizeConfig.heightMultiplier,
                       width: MediaQuery.of(context).size.width,
                       fit: BoxFit.fill,
                     ),
                     Positioned(
                       top: 53.65 * SizeConfig.heightMultiplier,
                       right: 4.86 * SizeConfig.widthMultiplier,
                       child: Container(
                         height: 6.09 * SizeConfig.heightMultiplier,
                         width: 12.16 * SizeConfig.widthMultiplier,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25.0),
                           color: Colors.white,
                         ),
                         child: Icon(Icons.favorite,
                           size: 3.65 * SizeConfig.heightMultiplier,
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
                           color: Colors.white70,
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
