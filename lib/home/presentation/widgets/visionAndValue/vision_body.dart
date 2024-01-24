import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timelines/timelines.dart';

import '../../../../constants.dart';
import '../../../data/model/visionAndValueModel.dart';

class VisionAndValueBody extends StatelessWidget {
  VisionAndValueBody({super.key});
  final List<VisionValueModel> visionList = [
    VisionValueModel(
      pointName: "الرؤية والقيم:",
      pointText:
          'تسليم جميع مشاريعنا مع الالتزام بجميع احتياجات العملاء بما يتجاوز توقعاتهم من خلال تطبيقالتقنيات والعمليات والممارسات المتطورة.',
    ),
    VisionValueModel(
        pointName: "ثقافتنا:",
        pointText:
            " تتجسد ثقافة العمل لدينا في عدد من المباديء والقيم والتي تتمثل في تعزيز بيئة عمل مهنية و أخلاقية ؛ تشجيع الإبداع والابتكار؛ التعرف على قيمة التحسين المستمر والانفتاح والاستماع الى العملاء والتكييف مع التغيير."),
    VisionValueModel(
      pointName: "الجودة:",
      pointText:
          "والصحة والسلامة والأمن: نؤمن بتحقيق أعلى معايير الجودة والصحة والسلامة والأمن من خلال جميعالآليات المتاحة .",
    ),
    VisionValueModel(
      pointName: "الشفافية:",
      pointText:
          "هدفنا هو تحقيق الشفافية الكاملة في كل ما نقوم به في جميع أنحاء شركتنا من أجل تعزيز الثقة و تحقيق هدفنا المنشود وهو إرضاء العميل بنسبة %١٠٠٪ ، نقوم بما نقوله.",
    ),
    VisionValueModel(
        pointName: "قيمنا:", pointText: "التحسين المستمر والابتكار والتميز ."),
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
                  SizedBox(
                    height: 10,
                  ),
                  defaultText("الرؤية والقيم", 28, FontWeight.w400,
                      color: Color(0xffA5702A)),
                  SizedBox(
                    height: 20,
                  ),
                  Timeline.tileBuilder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    theme: TimelineTheme.of(context).copyWith(
                        ///////dot position
                        indicatorPosition: 0.15,
                        nodePosition: 0,
                        color: Color(0xffA5702A),
                        connectorTheme:
                            ConnectorThemeData(color: Color(0xffE0B555))),
                    builder: TimelineTileBuilder.connected(
                      itemCount: visionList.length,
                      contentsBuilder: (context, index) {
                        return TimelineTile(
                          nodePosition: 0,
                          nodeAlign: TimelineNodeAlign.basic,
                          node: TimelineNode(
                            // indicator: DotIndicator(),
                            indicator:
                                OutlinedDotIndicator(color: Color(0xffA5702A)),
                            startConnector:
                                index == 0 ? Container() : SolidLineConnector(),
                            endConnector: index == visionList.length - 1
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
                                text: "${visionList[index].pointName}",
                                style: TextStyle(
                                    fontFamily: "Alexandria",
                                    color: primaryC3,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 1.8),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "${visionList[index].pointText}",
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/visionc.png",
                      // width: 500,
                      // height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      child: Padding(
        // textDirection: TextDirection.rtl,
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    defaultText("الرؤية والقيم", 40, FontWeight.w400,
                        color: Color(0xffA5702A)),
                    const SizedBox(
                      height: 20,
                    ),
                    Timeline.tileBuilder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      theme: TimelineTheme.of(context).copyWith(
                          ///////dot position
                          indicatorPosition: 0.3,
                          nodePosition: 0,
                          color: Color(0xffA5702A),
                          connectorTheme:
                              ConnectorThemeData(color: Color(0xffE0B555))),
                      builder: TimelineTileBuilder.connected(
                        itemCount: visionList.length,
                        contentsBuilder: (context, index) {
                          return TimelineTile(
                            nodePosition: 0,
                            nodeAlign: TimelineNodeAlign.basic,
                            node: TimelineNode(
                              // indicator: DotIndicator(),
                              indicator: OutlinedDotIndicator(
                                  color: Color(0xffA5702A)),
                              startConnector: index == 0
                                  ? Container()
                                  : SolidLineConnector(),
                              endConnector: index == visionList.length - 1
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
                                  text: "${visionList[index].pointName}",
                                  style: TextStyle(
                                      fontFamily: "Alexandria",
                                      color: primaryC3,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.8),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "${visionList[index].pointText}",
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
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/visionc.png",
                      width: 580,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
