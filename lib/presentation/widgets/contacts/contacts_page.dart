import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_text_style.dart';
import 'package:resume/presentation/widgets/buttons/contacts_button.dart';
import 'package:resume/utils/constants/screen_size.dart';

///CONTACTS HOME PAGE TRIANGLES, BOTTOM OR RIGHT COLUMN //

class ContactsHomePage extends StatefulWidget {
  const ContactsHomePage({
    Key? key,
  }) : super(key: key);

  @override
  ContactsHomePageState createState() => ContactsHomePageState();
}

class ContactsHomePageState extends State<ContactsHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

    return myScreenType.isDesktop
        ? Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/Phone.png'),
                          color: Colors.black,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Text('+974-5502-1236')
                            .contactsPhoneTextStylesDesktop(),
                      ])),
                ),
//-- EMAIL /
                const Padding(
                    padding: EdgeInsets.only(left: 5, top: 20),
                    child: ContactsButton(
                      type: 'email',
                    )),
//-- LINKEDIN//
                const Padding(
                    padding: EdgeInsets.only(left: 20, top: 50),
                    child: ContactsButton(type: 'linkedin')),
//-- GITHUB//
                const Padding(
                    padding: EdgeInsets.only(left: 35, top: 85),
                    child: ContactsButton(type: 'github'))
              ])

        ///CONTACTS TABLET UI ///
        : myScreenType.isTablet
            ? Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: const Text('Let\'s Connect')
                            .contactsTextTitleStylesWhite(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
//-- EMAIL -TABLET /
                            const ContactsButton(type: 'email'),
//-- GITHUB -TABLET//
                            const ContactsButton(type: 'github'),
//-- LINKEDIN -TABLET //
                            const ContactsButton(type: 'linkedin'),
//-- PHONE - TABLET //
                            FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Row(children: [
                                  const ImageIcon(
                                    AssetImage('assets/images/Phone.png'),
                                    color: Colors.white,
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 5)),
                                  const Text('+974-5502-1236')
                                      .contactsTextStylesWhite(),
                                ])),
                          ]),
                    )
                  ])
            :

            ///CONTACTS MOBILE UI ///
            FittedBox(
                fit: BoxFit.fitWidth,
                child: SizedBox(
                    width: 170,
                    height: 170,
                    child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        fit: StackFit.loose,
                        children: <Widget>[
                          Positioned(
                              top: 28,
                              left: 15,
                              child: const Text('Let\'s Connect')
                                  .contactsTextTitleStylesMobile()),
                          //-- EMAIL -MOBILE /
                          const Positioned(
                              top: 42,
                              left: 10,
                              child: ContactsButton(type: 'email')),
                          //-- GITHUB -MOBILE//
                          const Positioned(
                              top: 72,
                              left: 10,
                              child: ContactsButton(type: 'github')),
                          //-- LINKEDIN -MOBILE //
                          const Positioned(
                              top: 102,
                              left: 10,
                              child: ContactsButton(type: 'linkedin')),
                        ])));
    //)
  }
}
