import 'package:company_profile/home/presentation/widgets/navBar/content_navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../constants.dart';
import 'footer.dart';
import 'HowWeWork/how_we_work_body.dart';
import 'ReadMore/readMore_body.dart';
import 'differentWidgets/text_overImage.dart';
import 'visionAndValue/vision_body.dart';

class AboutCompanyScreen extends StatelessWidget {
  const AboutCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        // floatingActionButton: SocialContacts(),
        // backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        // body:
        Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TextOverImage(
                title: "عن الشركة",
                subTitle: "اوراق وشهادات , الرؤية والقيم ,كيف نعمل",
                image: "assets/images/ksa.png"),

            //Responsive Content Navbar
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
                Condition.largerThan(name: TABLET),
              ],
              replacement: ContentNavBar(
                  navcontent: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: defaultText("عن الشركة", 12, FontWeight.w500,
                    color: primaryC2),
              )),
              child: ContentNavBar(
                  navcontent: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: defaultText("عن الشركة", 16, FontWeight.w500,
                    color: primaryC2),
              )),
            ),

            SizedBox(
              height: 10,
            ),
            ReadMoreBody(),
            SizedBox(
              height: 40,
            ),
            Container(
                padding: EdgeInsets.only(top: 18, bottom: 40),
                color: Colors.white,
                child: HowWeWorkBody()),
            SizedBox(
              height: 40,
            ),
            VisionAndValueBody(),
            SizedBox(
              height: 40,
            ),
            MyFooter()
          ],
          // )
        ),
      ),
    );
  }
}
