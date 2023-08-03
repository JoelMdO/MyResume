import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/mobile/page_1_home/figure_contacts_p1m.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_career_p1d.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_education_techstack_p1d.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_skills_p1d.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';
import 'package:resume/presentation/widgets/drawer/contacts_drawer.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:resume/presentation/widgets/titles/title_home.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        //body//
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/First Background.png'),
                  fit: BoxFit.fill),
            ),
            child: Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
//Title
                  Positioned(
                    top: 10,
                    left: 10,
                    child: SizedBox(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.30,
                        child: const TituloHome()),
                  ),
//Skills

                  Positioned(
                    top: 165,
                    left: 10,
                    child: SizedBox(
                        width: screenWidth * 0.4,
                        height: screenHeight * 0.4,
                        child: const SkillsBarP1D()),
                  ),
//Education
                  Positioned(
                    top: 255,
                    left: 15,
                    child: SizedBox(
                        width: screenWidth * 0.4,
                        height: screenHeight * 0.4,
                        child: const EducationBarP1D()),
                  ),
//Career
                  Positioned(
                    top: 345,
                    left: 20,
                    child: SizedBox(
                        width: screenWidth * 0.4,
                        height: screenHeight * 0.4,
                        child: const CareerBarP1D()),
                  ),
//Profile ID
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 180,
                          height: screenHeight * 0.3,
                          child: const ProfileIDImage())),
//Contacts
                  Positioned(
                      bottom: 15,
                      right: 35,
                      child: SizedBox(
                          width: screenWidth * 0.35,
                          height: screenHeight * 0.3,
                          child: const Stack(children: [
                            FigureContacts(),
                            Positioned(
                                bottom: 5, right: 5, child: ContactsDrawer())
                          ]))),
//Download Button
                  const Positioned(
                    bottom: 15,
                    left: 25,
                    child: SizedBox(width: 200, child: DownloadButton()),
                  )
                ])));
  }
}
