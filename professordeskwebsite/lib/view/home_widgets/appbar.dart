import 'package:flutter/material.dart';
import 'package:professordeskwebsite/view/screenUtils/screen_size.dart';
import 'package:professordeskwebsite/view/supporters/flags.dart';
import 'package:professordeskwebsite/view/supporters/menus.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ScreenSize().isLargeScreen) {
      debugPrint('WIDE');
      return const WideAppBar();
    } else {
      debugPrint('NARROW');
      return const NarrowAppBar();
    }
  }
}

class WideAppBar extends StatelessWidget {
  const WideAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: ScreenSize().oneThirdOfHeight,
        pinned: true,
        floating: true,
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Menu().getHome(onPressed: (){}),
            Menu().getCourses(onPressed: (){}),
            Menu().getContact(onPressed: (){}),
            Menu().getAbout(onPressed: (){})
            // OutlinedButton(
            //   onPressed: (){},
            //     child: const Text('HOME'),
            // ),
            // OutlinedButton(
            //   onPressed: (){},
            //   child: const Text('COURSES'),
            // ),
            // OutlinedButton(
            //   onPressed: (){},
            //   child: const Text('ABOUT US'),
            // ),
            // OutlinedButton(
            //   onPressed: (){},
            //   child: const Text('CONTACT US'),
            // ),
          ],
        ));
  }
}

class NarrowAppBar extends StatelessWidget {
  const NarrowAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.teal,
      pinned: true,
      expandedHeight: ScreenSize().oneThirdOfHeight,
      actions: [
        IconButton(
            onPressed: () {
              _showVerticalMenu(context);
            },
            icon: const Icon(Icons.menu))
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.orange,
        ),
      ),
    );
  }

  Future<dynamic> _showVerticalMenu(BuildContext context) {
    TextStyle textStyle = const TextStyle(color: Colors.white);
    // Opening the Alert Dialog with Menus
    return Navigator.push(
        context,
        DialogRoute(
            context: context,
            builder: (BuildContext context) {
              // Setting the singleTon flag true to know status of menuDialog
              Flags().isMenuDialogOpen = true;

              // Getting the Menus from appBar library, constructing the
              // menuDialog and return it.
              return Dialog(
                backgroundColor: Colors.black54,
                clipBehavior: Clip.hardEdge,
                child: SizedBox(
                  width: ScreenSize().width,
                  height: ScreenSize().height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Menu().getHome(onPressed: () {},textStyle: textStyle),
                      ),
                      ListTile(
                          title: Menu().getCourses(
                              onPressed: () {},textStyle: textStyle)),
                      ListTile(
                          title: Menu().getAbout(
                              onPressed: () {},textStyle: textStyle)),
                      ListTile(
                          title:
                          Menu().getContact(onPressed: () {},textStyle: textStyle)),
                    ],
                  )
                ),
              );
            }));
  }


}

