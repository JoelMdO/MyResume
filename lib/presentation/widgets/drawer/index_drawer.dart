import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/drawer_button.dart';

//--DRAWER INDEX-- //
class DrawerIndex extends StatefulWidget {
  const DrawerIndex({
    super.key,
  });

  @override
  DrawerIndexState createState() => DrawerIndexState();
}

class DrawerIndexState extends State<DrawerIndex> {
  @override
  Widget build(BuildContext context) {
//[STACK] with the information, images and button to be inside the drawer
    return
//[LISTVIEW] Drawer list pages, characteristics of its page is obtained from the button_drawer.dart
//-file, class called ButtonDrawerMobile
        Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView(children: const <Widget>[
        MyDrawerButton(page: 1, pagename: 'HOME'),
        MyDrawerButton(page: 2, pagename: 'EDUCATION &\n TECH STACK'),
        MyDrawerButton(page: 3, pagename: 'PROJECTS'),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: MyDrawerButton(page: 5, pagename: 'LETS CONNECT')),
      ]),
    );
  }
}
