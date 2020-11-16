import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_buzz/themes/size_config.dart';

class Style{

  Style._();

  static const Color appBackgroundColor = Colors.orange;
  static const Color searchIconColor = Colors.deepOrange;
  static const Color buttonColor = Colors.grey;


  static final TextStyle hintStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 1.95 * SizeConfig.textMultiplier,
  );

  static final TextStyle textStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 1.95 * SizeConfig.textMultiplier,
  );

  static final TextStyle buttonTextStyle = TextStyle(
      color: Colors.white,
      fontFamily: 'Montserrat',
      fontSize: 1.95 * SizeConfig.textMultiplier,
  );

  static final TextStyle descTextStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 1.95 * SizeConfig.textMultiplier,
      color: Colors.grey,
      fontStyle: FontStyle.italic
  );

  static final TextStyle movieErrorTextStyle =  TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 2.43 * SizeConfig.textMultiplier,
  );

  static final TextStyle movieLoadingTextStyle =  TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 2.92 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold
  );

  static final TextStyle appTitleTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.blueGrey,
    fontSize: 1.95 * SizeConfig.textMultiplier,
  );

  static final TextStyle movieTitleStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 1.95 * SizeConfig.textMultiplier
  );

  static final TextStyle movieSubTitleStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 1.95 * SizeConfig.textMultiplier
  );

  static final TextStyle movieHeaderStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 3.29 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.bold
  );

  static final TextStyle movieDetail = TextStyle(
      fontFamily: 'Montserrat',
      fontStyle: FontStyle.italic,
      fontSize: 1.70 * SizeConfig.textMultiplier,
      color: Colors.orange.withOpacity(0.5)
  );

  static final TextStyle movieDetailInfo = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 1.70 * SizeConfig.textMultiplier,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey,
  );






}