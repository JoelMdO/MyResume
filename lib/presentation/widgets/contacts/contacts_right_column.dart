import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_text_style.dart';
import 'package:resume/presentation/widgets/buttons/contacts_email_button.dart';
import 'package:resume/presentation/widgets/buttons/contacts_github_button.dart';
import 'package:resume/presentation/widgets/buttons/contacts_lnkedin_button.dart';

//CONTACTS TRIANGLE RIGHT COLUMN //

class ContactsRightColumn extends StatefulWidget {
  const ContactsRightColumn({
    Key? key,
  }) : super(key: key);

  @override
  ContactsRightColumnState createState() => ContactsRightColumnState();
}

class ContactsRightColumnState extends State<ContactsRightColumn> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width <= 919 &&
        MediaQuery.of(context).size.width >= 767;

    return isDesktop
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
                    child: ContactsEmailButton()),
//-- LINKEDIN//
                const Padding(
                    padding: EdgeInsets.only(left: 20, top: 50),
                    child: ContactsLinkedinButton()),
//-- GITHUB//
                const Padding(
                    padding: EdgeInsets.only(left: 35, top: 85),
                    child: ContactsGithubButton())
              ])

        ///CONTACTS TABLET UI ///
        : isTablet
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
                            const ContactsEmailButton(),
//-- GITHUB -TABLET//
                            const ContactsGithubButton(),
//-- LINKEDIN -TABLET //
                            const ContactsLinkedinButton(),
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
            Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: const Text('Let\'s Connect')
                            .contactsTextTitleStylesMobile(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
//-- EMAIL -TABLET /
                            const ContactsEmailButton(),
//-- GITHUB -TABLET//
                            const ContactsGithubButton(),
//-- LINKEDIN -TABLET //
                            const ContactsLinkedinButton(),
//-- PHONE - TABLET //
                            FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Row(children: [
                                  const ImageIcon(
                                    AssetImage('assets/images/Phone.png'),
                                    color: Colors.black,
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 5)),
                                  const Text('+974-5502-1236')
                                      .contactsTextStylesMobile(),
                                ])),
                          ]),
                    )
                  ]);
  }
}
