import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/widgets/contact_us2_attach.dart';

import '../constants.dart';
import '../widgets/contact_us2_fields.dart';
import '../widgets/contact_us_button.dart';

class ContactUs2Page extends StatelessWidget {
  const ContactUs2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF3F3F3),
        appBar: AppBar(
          title: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/images/bigIcon.png',
                height: 40,
                width: 61,
              ),
            ],
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          toolbarHeight: 66,
          centerTitle: true,
          bottom: TabBar(
            indicatorWeight: 5,
            labelColor: mainColor,
            indicatorColor: mainColor,
            tabs: [
              Row(
                children: [
                  isAr
                      ? const SizedBox(height: 50, width: 70)
                      : const SizedBox(height: 50, width: 30),
                  Text(
                    "info".tr(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 155,
                  ),
                  Expanded(
                    child: Text(
                      "nextSend".tr(),
                      style: const TextStyle(
                          fontSize: 15, color: Color(0xFF707070)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          flexibleSpace:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  '2/2',
                  style: TextStyle(fontSize: 13, color: Color(0xFF707070)),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ]),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "contactUs".tr(),
              style: const TextStyle(
                color: mainColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40, //20 before
            ),
            const Flexible(child: ContactUsFields2()),
            Column(
              children: const [ContactUsAttach()],
            ),
            isAr ? const SizedBox(height: 55) : const SizedBox(height: 80),
            ContactUsButton(
              btnText: "send".tr(),
              ContactStep: 2,
            ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
