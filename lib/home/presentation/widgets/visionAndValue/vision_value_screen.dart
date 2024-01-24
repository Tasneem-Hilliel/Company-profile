import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:company_profile/home/presentation/widgets/navBar/content_navbar.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/text_overImage.dart';
import 'package:company_profile/home/presentation/widgets/visionAndValue/vision_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../constants.dart';
import '../footer.dart';

class VisionAndValueScreen extends StatelessWidget {
  VisionAndValueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BrokerCubit.get(context);

    return
        // Scaffold(
        //   floatingActionButton: SocialContacts(),
        //   backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        //   body: Directionality(
        //     textDirection: TextDirection.rtl,
        //     child: SingleChildScrollView(
        //         child:
        BlocBuilder<BrokerCubit, BrokerStates>(
      builder: (context, state) => SingleChildScrollView(
        child: Column(
          children: [
            const TextOverImage(
              title: "من نحن ؟",
              subTitle: "كيف نعمل",
              image: "assets/images/who_we_arebg.png",
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
                Condition.largerThan(name: TABLET),
              ],
              replacement: ContentNavBar(
                  navcontent: Row(
                children: [
                  InkWell(
                    onTap: () {
                      cubit.selectAppBar(10);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: defaultText("من نحن ؟", 12, FontWeight.w500,
                          color: basicC4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child:
                        defaultText("/", 12, FontWeight.w500, color: basicC4),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: defaultText("الرؤية والقيم", 12, FontWeight.w500,
                        color: primaryC2),
                  ),
                ],
              )),
              child: ContentNavBar(
                  navcontent: Row(
                children: [
                  InkWell(
                    onTap: () {
                      cubit.selectAppBar(10);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: defaultText("من نحن ؟", 16, FontWeight.w500,
                          color: basicC4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child:
                        defaultText("/", 16, FontWeight.w500, color: basicC4),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: defaultText("الرؤية والقيم", 16, FontWeight.w500,
                        color: primaryC2),
                  ),
                ],
              )),
            ),
            SizedBox(
              height: 20,
            ),
            VisionAndValueBody(),
            SizedBox(
              height: 40,
            ),
            MyFooter()
          ],
          //   )),
          // ),
        ),
      ),
    );
  }
}
