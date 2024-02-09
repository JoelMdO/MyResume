import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/cubit/carousel_index.dart';
import 'package:resume/presentation/pages/page_4_projects/map_projects.dart';
import 'package:resume/presentation/widgets/carousel/carousel_content_project/ui_slider.dart';

// ignore: must_be_immutable
class CarouselByProject extends StatefulWidget {
  ///Retrieves the information of the type of carrousel, could be:
  ///flutter, figma, react, depending of the type of the project the
  ///user would like to review.
  String type;

  CarouselByProject({super.key, required this.type});

  @override
  State<CarouselByProject> createState() => _CarouselByProjectState();
}

class _CarouselByProjectState extends State<CarouselByProject> {
  @override
  Widget build(BuildContext context) {
    double height = 0;
    Map<String, Map<int, Map<String, String>>> infoProjectMap =
        MapProjects.projectsMap;

    List<Map<String, String>> projects = [];

    if (infoProjectMap.containsKey(widget.type)) {
      for (int i = 0; i < infoProjectMap[widget.type]!.length; i++) {
        projects.add(infoProjectMap[widget.type]![i]!);
      }
    }

    if (widget.type == 'repo' || widget.type == 'aviation') {
      height = 185;
    } else {
      height = 265;
    }

    return CarouselSlider(
        items: [
          for (int i = 0; i < projects.length; i++)
            UISlider(type: widget.type, title: projects[i]['title']!)
        ],
        options: CarouselOptions(
            height: height,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(milliseconds: 4000),
            reverse: true,
            pauseAutoPlayOnManualNavigate: true,
            pauseAutoPlayOnTouch: true,
            pageSnapping: true,
            viewportFraction: 0.6,
            onPageChanged: (index, reason) {
              Provider.of<CarouselProvider>(context, listen: false)
                  .setIndex(index);
            }));
  }
}
