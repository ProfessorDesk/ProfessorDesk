import 'package:flutter/material.dart';
import 'package:professordeskwebsite/view/home_widgets/appbar.dart';
import 'package:professordeskwebsite/view/screenUtils/screen_size.dart';
import 'package:professordeskwebsite/view/supporters/flags.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    debugPrint('HELLO');
    return Scaffold(
      extendBodyBehindAppBar:  false,
      body: LayoutBuilder(
        builder: (BuildContext context,BoxConstraints constraints){
          debugPrint('REBUILD');
          ScreenSize.setScreenSize(MediaQuery.of(context).size);
          //Checking and closing the Vertical_Dialog_Menu is active when screen
          // size is changed to Large
          if (Flags().isMenuDialogOpen && ScreenSize().isLargeScreen) {
            Navigator.pop(context);
            Flags().isMenuDialogOpen = false;
          }
          return NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool isInnerBoxScrolled){
                return <Widget> [
                  SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    sliver: ResponsiveAppBar(),
                  )
                ];
              },
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 900,
                      color: Colors.red,
                    ),
                    Container(
                      height: 900,
                      color: Colors.blue,
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
