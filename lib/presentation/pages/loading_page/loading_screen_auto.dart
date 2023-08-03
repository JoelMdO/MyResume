import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:resume/config/responsive_routes.dart';
import 'package:resume/presentation/widgets/pages_text/loading_text.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:video_player/video_player.dart';

class LoadingScreenAutoPlay extends StatefulWidget {
  const LoadingScreenAutoPlay({
    Key? key,
  }) : super(key: key);

  @override
  State<LoadingScreenAutoPlay> createState() => _LoadingScreenAutoPlayState();
}

class _LoadingScreenAutoPlayState extends State<LoadingScreenAutoPlay> {
// [VIDEO PLAYER CONTROLLER] creates a controller and the video link as String
  late VideoPlayerController _controller;
  String video = 'assets/video/Profile.mp4';
  bool showIdImage = false;

//-Intialize the controller giving
  @override
  void initState() {
    //_controller = VideoPlayerController.asset(video)
    _controller = VideoPlayerController.network(video)
      ..initialize().then((_) {
        setState(() {
          //-Volume requires to be mute to be auto play in chrome and edge
          _controller.setVolume(0.0);
          //-Volume listener to make the idImage to show and to navigate to Home page after video has ended
          _controller.addListener(() {
            if (_controller.value.position >= _controller.value.duration) {
              setState(() {
                showIdImage = true;
              });
              //Delay the change of page after the video is over by 1 second
              Future.delayed(const Duration(seconds: 1), () {
                navigateToResponsiveHomePage();
              });
            }
          });
        });
        //-Delay the video after 1 second.
        Future.delayed(const Duration(seconds: 1), () {
          _controller.play();
        });
      });
    super.initState();
  }

//-[idImage] to set the ProfileIDImage to show after the video
  Widget idImage() {
    return const Hero(tag: 'Hero1', child: ProfileIDImage());
  }

//-Navigate to the home page called responsive home page
  void navigateToResponsiveHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const ResponsiveHomePage(),
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
                _controller.value.isInitialized
                    ? SizedBox(
                        width: screenWidth,
                        height: screenHeight,
                        child: AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ))
                    : const SizedBox(),
                const DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: LoadingText(),
                )
              ]),
//- [IF] objective to load the idImage after the video ends and .2 seconds
          if (_controller.value.position >= _controller.value.duration)
            DelayedDisplay(
                delay: const Duration(milliseconds: 200),
                child: Align(alignment: Alignment.center, child: idImage()))
        ]),
      )),
    );
  }

  //-Dispose of the controller
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
