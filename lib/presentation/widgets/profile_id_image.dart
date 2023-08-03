import 'package:flutter/material.dart';
import 'package:resume/utils/constants/colors.dart';

class ProfileIDImage extends StatelessWidget {
  const ProfileIDImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colores.blue,
      maxRadius: 95,
      minRadius: 85,
      child: CircleAvatar(
          radius: 85, child: Image.asset('assets/images/profile.png')),
    );
  }
}
