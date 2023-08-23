import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:resume/cubit/routes_cubit.dart';
import 'package:resume/presentation/widgets/buttons/styles_text_buttons.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: mustView_be_immutable
class FloatButton extends StatelessWidget {
  const FloatButton({
    super.key,
    //
  });

  @override
  Widget build(BuildContext context) {
// [SpeedDial] to allow to have 3 items once clicked the floatingbutton
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: Colores.green,
      overlayColor: Colores.yellow,
      overlayOpacity: 0.5,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.arrow_back),
          label: 'Go Back',
          labelStyle: floatButtonTitleTextStyle(),
          onTap: () {
            context.read<NavigationCubit>().goBack();
          },
        ),
        SpeedDialChild(
          child: const Icon(Icons.dashboard_customize),
          label: 'Sections',
          labelStyle: floatButtonTitleTextStyle(),
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        SpeedDialChild(
          child: const Icon(Icons.email),
          label: 'Send Email',
          labelStyle: floatButtonTitleTextStyle(),
          onTap: () {
            _launchEmail();
          },
        ),
      ],
    );
  }
}

void _launchEmail() async {
  final url = Uri(scheme: 'mailto', path: 'joelmontesdeoca@proton.me');
  if (await canLaunchUrl(url)) {
    launchUrl(url);
  } else {
    // ignore: avoid_print
    print("Can't launch $url");
  }
}
