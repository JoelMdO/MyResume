import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/button_drawer.dart';

//--DRAWER INDEX-- //
class DrawerIndex extends StatefulWidget {
  const DrawerIndex({
    Key? key,
  }) : super(key: key);

  @override
  DrawerIndexState createState() => DrawerIndexState();
}

class DrawerIndexState extends State<DrawerIndex> {
  @override
  Widget build(BuildContext context) {
//[STACK] with the information, images and button to be inside the drawer
    return Stack(
        alignment: AlignmentDirectional.topStart,
        fit: StackFit.loose,
        children: <Widget>[
          Positioned(
            top: -95,
            left: -95,
            child: Image.asset(
              'assets/images/InvertedDrawer.png',
            ),
          ),
//[LISTVIEW] Drawer list pages, characteristics of its page is obtained from the button_drawer.dart
//-file, class called ButtonDrawerMobile
          ListView(children: const <Widget>[
            Padding(padding: EdgeInsets.only(top: 10)),
            ButtonDrawer(page: 1, pagename: 'HOME'),
            ButtonDrawer(page: 2, pagename: 'EDUCATION & TECH STACK'),
            ButtonDrawer(page: 3, pagename: 'CAREER SUMMARY'),
            ButtonDrawer(page: 4, pagename: 'PROJECTS'),
            Padding(
                padding: EdgeInsets.only(left: 12),
                child: ButtonDrawer(page: 5, pagename: 'CONTACT ME')),
          ]),
        ]);
  }
}
