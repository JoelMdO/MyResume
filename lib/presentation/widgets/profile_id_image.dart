import 'package:flutter/material.dart';
import 'package:resume/utils/constants/colors.dart';

class ProfileIDImage extends StatelessWidget {
  const ProfileIDImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colores.blue,
      radius: 80,
      child: CircleAvatar(
          radius: 70, child: Image.asset('assets/images/profile.png')),
    );
  }
}
