import 'package:company_profile/home/data/model/visionAndValueModel.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/title_description..dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timelines/timelines.dart';

import '../../../../constants.dart';

class HowWeWorkBody extends StatelessWidget {
  HowWeWorkBody({super.key});

  final List<VisionValueModel> workList = [
    VisionValueModel(
        pointName: " الجودة:",
        pointText:
            " مسئوليتنا الأساسية هي تنفيذ مشاريع البناء وفقاً لمتطلبات العميل مع الامتثال لأنظمة البناء ؛ملتزمون بتزويد عملاءنا بأعلى معايير الجودة والخدمة"),
    VisionValueModel(
        pointName: "التسليم:",
        pointText:
            "نحن ندرك تمامًا أن التسليم في الوقت المحدد لمشاريع البناء هو مطلب أساسي لجميع عملائنا."),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: MOBILE),
        Condition.largerThan(name: TABLET),
      ],
      replacement: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              // width: MediaQuery.of(context).size.width * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: 25,
                  // ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            "assets/images/how_we_workc.png",
                            // width: 500,
                            // height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TitleAndDescriptionWidget(
                    title: "كيف نعمل",
                    description:
                        "تتمتع شركة البناء الحديث للمقاولات العامة بسمعة تحسد عليها في الوفاء بالمواعيد النهائية وتسليم المشاريع بنجاح في الموعد المحدد ونتطلع للحفاظ على ذلك دائما والذي تم تحقيقه على مدار سنوات من العمل الجاد والمتفاني.",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ///////////////
                  Timeline.tileBuilder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    theme: TimelineTheme.of(context).copyWith(
                        ///////dot position
                        indicatorPosition: 0.15,
                        nodePosition: 0,
                        color: Color(0xffA5702A),
                        connectorTheme:
                            ConnectorThemeData(color: Color(0xffE0B555))),
                    builder: TimelineTileBuilder.connected(
                      itemCount: workList.length,
                      contentsBuilder: (context, index) {
                        return TimelineTile(
                          nodePosition: 0,
                          nodeAlign: TimelineNodeAlign.basic,
                          node: TimelineNode(
                            indicator:
                                OutlinedDotIndicator(color: Color(0xffA5702A)),
                            startConnector:
                                index == 0 ? Container() : SolidLineConnector(),
                            endConnector: index == workList.length - 1
                                ? Container()
                                : SolidLineConnector(),
                          ),
                          contents: Padding(
                            padding: index != 4
                                ? EdgeInsets.all(8.0)
                                : EdgeInsets.only(
                                    left: 8.0, right: 8, bottom: 8),
                            child: RichText(
                              text: TextSpan(
                                text: "${workList[index].pointName}",
                                style: TextStyle(
                                    fontFamily: "Alexandria",
                                    color: primaryC3,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "${workList[index].pointText}",
                                    style: TextStyle(
                                      height: 1.8,
                                      fontFamily: "Alexandria",
                                      color: basicC2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .45,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.asset(
                    "assets/images/how_we_workc.png",
                    width: 580,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * .45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAndDescriptionWidget(
                  title: "كيف نعمل",
                  description:
                      "تتمتع شركة البناء الحديث للمقاولات العامة بسمعة تحسد عليها في الوفاء بالمواعيد النهائية وتسليم المشاريع بنجاح في الموعد المحدد ونتطلع للحفاظ على ذلك دائما والذي تم تحقيقه على مدار سنوات من العمل الجاد والمتفاني.",
                ),
                // defaultText("كيف نعمل", 40, FontWeight.w400,
                //     color: Color(0xffA5702A)),
                // SizedBox(
                //   height: 10,
                // ),
                // defaultText(
                //     "تتمتع شركة البناء الحديث للمقاولات العامة بسمعة تحسد عليها في الوفاء بالمواعيد النهائية وتسليم المشاريع بنجاح في الموعد المحدد ونتطلع للحفاظ على ذلك دائما والذي تم تحقيقه على مدار سنوات من العمل الجاد والمتفاني.",
                //     18,
                //     FontWeight.w500,
                //     color: Color(0xff154555)),
                SizedBox(
                  height: 20,
                ),
                Timeline.tileBuilder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  theme: TimelineTheme.of(context).copyWith(
                      ///////dot position
                      indicatorPosition: 0.3,
                      nodePosition: 0,
                      color: Color(0xffA5702A),
                      connectorTheme:
                          ConnectorThemeData(color: Color(0xffE0B555))),
                  builder: TimelineTileBuilder.connected(
                    itemCount: workList.length,
                    contentsBuilder: (context, index) {
                      return TimelineTile(
                        nodePosition: 0,
                        nodeAlign: TimelineNodeAlign.basic,
                        node: TimelineNode(
                          indicator:
                              OutlinedDotIndicator(color: Color(0xffA5702A)),
                          startConnector:
                              index == 0 ? Container() : SolidLineConnector(),
                          endConnector: index == workList.length - 1
                              ? Container()
                              : SolidLineConnector(),
                        ),
                        contents: Padding(
                          padding: index != 4
                              ? EdgeInsets.all(8.0)
                              : EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                          child: RichText(
                            text: TextSpan(
                              text: "${workList[index].pointName}",
                              style: TextStyle(
                                  fontFamily: "Alexandria",
                                  color: primaryC3,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "${workList[index].pointText}",
                                  style: TextStyle(
                                    height: 1.8,
                                    fontFamily: "Alexandria",
                                    color: Color(0xff333333),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
