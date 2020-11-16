import 'package:flutter/material.dart';
import 'package:movie_buzz/themes/images.dart';
import 'package:movie_buzz/themes/style.dart';


class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> with SingleTickerProviderStateMixin {

  AnimationController _controller ;
  Animation rotationAnim;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,
        duration: Duration(seconds: 2));

    rotationAnim = Tween<double>(begin: 0.0,end: 1.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(0.0,1.0,curve: Curves.linear),

        )
    )..addStatusListener((status){
      if(status == AnimationStatus.completed){
        _controller.reverse();
      }else if(status == AnimationStatus.dismissed){
        _controller.forward();
      }
    });


    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RotationTransition(
              turns: rotationAnim,
              child: Container(
                  height:75.0,
                  width: 75.0,
                  child: Image.asset(Images.loading_Img)),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Center(child: Text('loading movies....',
          style: Style.movieLoadingTextStyle,))
        ],
      ),
    );
  }
}