import 'package:flutter/material.dart';

class Menu {
  static const String _home = 'HOME';
  static const String _course = 'EXPERIENCE';
  static const String _about = 'ABOUT';
  static const String _contact = 'CONTACT';

  //Default TextStyle for the menus
  //If no TextStyle is specified when calling then this will be assigned as
  //default argument
  static const TextStyle _defaultTextStyle =
  TextStyle(color: Colors.black);

  // These functions just return the menus that you want to show on the appBar
  // or menu bar
  GestureDetector getHome(
      {required VoidCallback onPressed,
        TextStyle textStyle = _defaultTextStyle}) {
    return _menuDesign(_home, textStyle, onPressed);
  }

  GestureDetector getCourses(
      {required VoidCallback onPressed,
        TextStyle textStyle = _defaultTextStyle}) {
    return _menuDesign(_course, textStyle, onPressed);
  }

  GestureDetector getContact(
      {required VoidCallback onPressed,
        TextStyle textStyle = _defaultTextStyle}) {
    return _menuDesign(_contact, textStyle, onPressed);
  }

  GestureDetector getAbout(
      {required VoidCallback onPressed,
        TextStyle textStyle = _defaultTextStyle}) {
    return _menuDesign(_about, textStyle, onPressed);
  }


  //It is private function, can't be accessed outside the class
  //It is written only to return the the design of the menu.
  GestureDetector _menuDesign(
      String label, TextStyle textStyle, VoidCallback onPressed) {
    return GestureDetector(
      child: Text(
        label,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
      onTap: onPressed,
    );
  }
}
