import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/routes_cubit.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_cess.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_contacts_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

mixin ButtonsMixin {
  ///BAR BUTTONS
  Widget imagesShapeButton(String type) {
    String image = '';

    ///
    switch (type) {
      case 'blue':
        image = 'assets/images/BlueSquare.png';
      case 'yellow':
        image = 'assets/images/GreySquareYellow.png';
      case 'black':
        image = 'assets/images/BlackWing.png';
    }
    return Image.asset(image);
  }

  Future<void>? onTapBarButton(BuildContext context, dynamic type) async {
    ///
    switch (type) {
      case 'SKILLS &\n STRENGTHS':
        await OpenDialogCESS.openD(context, 'skills');
        break;
      case 'PROJECTS':
        context.read<NavigationCubit>().navigateTo('/projects');
        break;
      case 'TECH STACK &\n EDUCATION':
        context.read<NavigationCubit>().navigateTo('/techstack');
        break;
      case 1:
        context.read<NavigationCubit>().navigateTo('/');
        break;
      case 2:
        context.read<NavigationCubit>().navigateTo('/techstack');
        break;
      case 3:
        context.read<NavigationCubit>().navigateTo('/projects');
        break;
      case 4:
        await OpenDialogContactsDrawer.openDC(context);
        break;
    }
  }

  ///CONTACTS BUTTONS
  String image(String type) {
    switch (type) {
      case 'email':
        return 'assets/images/Envelope.png';
      case 'github':
        return 'assets/images/github-logo.png';
      case 'linkedin':
        return 'assets/images/LinkedIn.png';
    }
    return '';
  }

  String name(String type) {
    switch (type) {
      case 'email':
        return ' joelmontesdeoca@proton.me';
      case 'github':
        return 'github.com/JoelMdO';

      case 'linkedin':
        return 'joel-montesdeoca-lopez';
    }
    return '';
  }

  String url(String type) {
    switch (type) {
      case 'github':
        return 'https://github.com/JoelMdO';
      case 'linkedin':
        return 'https://www.linkedin.com/in/joel-montesdeoca-lopez';
      case 'download':
        return 'https://drive.google.com/file/d/1W0SyAzGU0eUD6IOc2e3_cvOR6XMXTz60/view?usp=sharing';
    }
    return '';
  }

  Future<void> launchToUrl(String type) async {
    //
    Uri urlFinal = Uri.parse(url(type));
    switch (type) {
      case 'email':
        urlFinal = Uri(scheme: 'mailto', path: 'joelmontesdeoca@proton.me');
      case 'github':
        urlFinal = Uri.parse(url(type));
      case 'linkedin':
        urlFinal = Uri.parse(url(type));
      case 'download':
        urlFinal = Uri.parse(url(type));
    }
    if (await canLaunchUrl(urlFinal)) {
      launchUrl(urlFinal);
    } else {
      _showErrorDialog(type);
    }
  }

  Widget _showErrorDialog(String type) {
    ///
    final urlToCopy = url(type);
    bool isDownload = false;

    if (type == 'download') {
      isDownload = true;
    }

    ///
    return AlertDialog(
      title: Text(isDownload
          ? 'Unable to download the resume'
          : 'Unable to launch $type'),
      content: Text('Please copy $urlToCopy and try externally'),
      actions: [
        IconButton(
          icon: const Icon(Icons.copy_sharp),
          onPressed: () async {
            await Clipboard.setData(ClipboardData(text: urlToCopy));
          },
        ),
      ],
    );
  }
}
