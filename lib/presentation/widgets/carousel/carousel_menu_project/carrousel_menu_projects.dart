import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/carousel/carousel_menu_project/cubes.dart';

class CarouselMenuProjects extends StatefulWidget {
  final String page;
  const CarouselMenuProjects({super.key, required this.page});

  @override
  State<CarouselMenuProjects> createState() => _CarouselMenuProjectsState();
}

class _CarouselMenuProjectsState extends State<CarouselMenuProjects> {
  bool isContent = false;
  @override
  Widget build(BuildContext context) {
    ///[isContent] used as the carousel will be placed in the projects
    ///[project_types_content] at the bottom for the user to be able
    ///to change or select a new type of project menu.
    if (widget.page == 'content') {
      isContent = true;
    } else {
      isContent = false;
    }
    return CarouselSlider(
        items: [
          Cube(type: 'react'),
          Cube(type: 'flutter'),
          Cube(type: 'nodejs'),
          Cube(type: 'figma'),
          Cube(type: 'aviation'),
          Cube(type: 'in-progress'),
          Cube(type: 'repo'),
        ],
        options: CarouselOptions(
          height: isContent ? 80 : 265,
          enlargeCenterPage: true,
          autoPlay: isContent ? false : true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          reverse: true,
          pauseAutoPlayOnManualNavigate: true,
          pageSnapping: true,
          viewportFraction: isContent ? 0.15 : 0.4,
        ));
  }
}
