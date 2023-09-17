import 'package:flutter/material.dart';
import 'package:resume/config/responsive_routes.dart';
import 'package:resume/presentation/pages/loading_page/loading_text.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool showIdImage = false;

//-Init state of thecontroller giving
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 8), () {
      navigateToResponsiveHomePage();
    });
    super.initState();
  }

//-Navigate to the home page called responsive home page
  void navigateToResponsiveHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const ResponsiveHomePage(
          nameRoute: '/',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 0.5;
    double screenHeight = MediaQuery.of(context).size.height * 0.5;

    return Scaffold(
      body: Center(
          child: Container(
        //Expantion of the container to get all the screen
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(color: Colors.black),
        child: Stack(alignment: Alignment.center, children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    width: screenWidth,
                    height: screenHeight,
                    child: Image.asset('assets/images/profilegif.gif')),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                const LoadingText(),
              ]),
        ]),
      )),
    );
  }
}
