import 'package:flutter/material.dart';

class ScreenSize{

  static late double _height;
  static late double _width;
  static late double _oneThirdOfHeight;
  static const double _appBarHeight = 50;

  static late bool _isLargeScreen;
  static late bool _isSmallScreen;
  static late bool _isMediumScreen;


  get isLargeScreen => _isLargeScreen;
  get isSmallScreen => _isSmallScreen;
  get isMediumScreen => _isMediumScreen;
  get height => _height;
  get width => _width;
  get appBarHeight => _appBarHeight;
  get oneThirdOfHeight => _oneThirdOfHeight;


  static void setScreenSize(Size size){
    _height = size.height;
    _width = size.width;
    _setOneThirdOfHeight();

    if(_width > 600){
      _isLargeScreen = true;
      _isSmallScreen = false;
      _isMediumScreen = false;
    } else {
      _isLargeScreen = false;
      _isSmallScreen = true;
      _isMediumScreen = false;
    }
  }

  static void _setOneThirdOfHeight() {
    _oneThirdOfHeight = _height * 0.75;
  }
}