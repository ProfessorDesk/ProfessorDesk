import 'package:flutter/material.dart';
import 'package:professordeskwebsite/view/home.dart';
import 'package:professordeskwebsite/view/screenUtils/screen_size.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class ProfessorDesk extends StatefulWidget {
  const ProfessorDesk({Key? key}) : super(key: key);

  @override
  _ProfessorDeskState createState() => _ProfessorDeskState();
}

class _ProfessorDeskState extends State<ProfessorDesk> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return const Home();
    });
  }
}
