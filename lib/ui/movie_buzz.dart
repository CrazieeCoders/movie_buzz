import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_buzz/bloc/movie_bloc.dart';
import 'package:movie_buzz/bloc/movie_events.dart';
import 'package:movie_buzz/themes/size_config.dart';
import 'package:movie_buzz/themes/strings.dart';
import 'package:movie_buzz/themes/style.dart';


class InitialWidget extends StatefulWidget {

  String errorMsg;
  InitialWidget({this.errorMsg});

  @override
  _InitialWidgetState createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget> with SingleTickerProviderStateMixin{


  MovieBloc movieBloc;
  TextEditingController _searchMovie = new TextEditingController();
  Animation _searchAnim;
  AnimationController _animationController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _searchAnim = Tween(begin: 1.0,end: 1.2).animate(
      _animationController
    )..addStatusListener((status){
      if(status == AnimationStatus.completed){
        _animationController.reverse();
      }else if(status == AnimationStatus.dismissed){
        _animationController.forward();
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    movieBloc = BlocProvider.of<MovieBloc>(context);
    return Scaffold(
      backgroundColor: Style.appBackgroundColor.withOpacity(0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 4.87 * SizeConfig.heightMultiplier,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
              color: Style.appBackgroundColor.withOpacity(0.5)
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 3.65 * SizeConfig.heightMultiplier,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white.withOpacity(0.9),
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: TextField(
                        autocorrect: false,
                        style: Style.textStyle,
                        controller: _searchMovie,
                        decoration: InputDecoration(
                          hintText: Strings.hintText,
                          hintStyle: Style.hintStyle,
                          border: InputBorder.none,
                          suffixIcon: ScaleTransition(
                            scale: _searchAnim,
                            child: Icon(Icons.search,
                              color: Style.searchIconColor,
                              size: 5.4 * SizeConfig.heightMultiplier,),
                          ),

                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 2.4 * SizeConfig.heightMultiplier,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: RaisedButton(
                    onPressed: ()async{

                      if(_searchMovie.text == ""){
                        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Movie Name Cannot be left Empty!'),));
                      }else {
                        movieBloc.add(FetchEvent(movieName: _searchMovie.text));
                        _searchMovie.clear();
                      }
                    },
                    color: Style.buttonColor,
                    child: Text(Strings.buttonText,
                      style: Style.buttonTextStyle),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 9.75 * SizeConfig.heightMultiplier,
          ),

          Visibility(
            visible: widget.errorMsg == null,
            child: Padding(
              padding: const EdgeInsets.only(left:18.0,right: 18.0),
              child: Text(
                Strings.description,
                style: Style.descTextStyle),
            ),
          ),

          Visibility (
            visible: widget.errorMsg != null,
            child:Center(child: Text('${widget.errorMsg}',
              style:Style.movieErrorTextStyle,)) ,
          ),

        ],
      ),
    );

  }

  }






