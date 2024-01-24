// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timelines/timelines.dart';

import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';

import '../../../../constants.dart';
import '../differentWidgets/title_description..dart';

class ReadMoreBody extends StatefulWidget {
  ReadMoreBody({super.key});

  @override
  State<ReadMoreBody> createState() => _ReadMoreBodyState();
}

bool showMore = false;
final List readMoreData = [
  "شركة متكاملة تأسست مع بداية الألفية ويقع المقر الرئيسي لها بمدينة الدمام بالمملكة العربية السعودية، كما ولها ممثلين بعدة مدن أخرى مثل الرياض وجدة وغيرها .",
  " تستخدم الشركة معظم الموارد الداخلية مما يمنحها درجة عالية من التحكم في جودة المشاريع والتسليم في الوقت المناسب.",
  " تستخدم الشركة معظم الموارد الداخلية مما يمنحها درجة عالية من التحكم في جودة المشاريع والتسليم في الوقت المناسب.",
  " تستخدم الشركة معظم الموارد الداخلية مما يمنحها درجة عالية من التحكم في جودة المشاريع والتسليم في الوقت المناسب.",
  " تستخدم الشركة معظم الموارد الداخلية مما يمنحها درجة عالية من التحكم في جودة المشاريع والتسليم في الوقت المناسب.",
  "نمت الشركة وتطورت على مدار السنوات الماضية لتصبح من شركات الإنشاءات الرائدة في تنفيذ المشاريع الخاصة بنظام تسليم المفتاح."
];

class _ReadMoreBodyState extends State<ReadMoreBody> {
  @override
  Widget build(BuildContext context) {
    var cubit = BrokerCubit.get(context);
    return BlocBuilder<BrokerCubit, BrokerStates>(builder: (context, state) {
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
                      height: 25,
                    ),
                    TitleAndDescriptionWidget(
                      title: "من نحن ؟",
                      description:
                          "لدينا فريق هندسى متخصص فى المجال ، مجهز بأحدس الادوات وافضل الخامات",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        FixedTimeline.tileBuilder(
                          theme: TimelineTheme.of(context).copyWith(
                              ///////dot position
                              indicatorPosition: 0.15,
                              nodePosition: 0,
                              color: Color(0xffA5702A),
                              connectorTheme:
                                  ConnectorThemeData(color: Color(0xffE0B555))),
                          builder: TimelineTileBuilder.connectedFromStyle(
                            firstConnectorStyle: ConnectorStyle.transparent,
                            lastConnectorStyle: ConnectorStyle.transparent,
                            contentsAlign: ContentsAlign.basic,
                            connectionDirection: ConnectionDirection.after,
                            contentsBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: defaultText("${readMoreData[index]}", 14,
                                    FontWeight.w400,
                                    color: basicC2)),
                            connectorStyleBuilder: (context, index) {
                              return ConnectorStyle.solidLine;
                            },
                            indicatorStyleBuilder: (context, index) {
                              return IndicatorStyle.outlined;
                            },
                            itemCount: showMore ? readMoreData.length : 4,
                            itemExtent: 80.0,
                          ),
                        ),
                        !showMore
                            ? Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                // top: 0,
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 1.5, sigmaY: 1.5),
                                    child: SizedBox(
                                      // the size where the blurring starts
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.14,
                                      // color: Colors.black.withOpacity(0.1),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  showMore = !showMore;
                                                });
                                              },
                                              child: defaultText("المزيد...",
                                                  16, FontWeight.w400,
                                                  color: primaryC3))),
                                    ),
                                  ),
                                ),
                              )
                            : Container()
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
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
                        "assets/images/HandShake.jpeg",
                        // width: 500,
                        // height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      // width: 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              cubit.selectAppBar(6);
                            },
                            child: HoverWidget(
                              hoverChild: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE0B555),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                // width: 240,
                                width: MediaQuery.of(context).size.width * .43,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/innovation.png",
                                      width: 40,
                                      height: 40,
                                      color: Colors.white,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        defaultText("الرؤية والقيم", 14,
                                            FontWeight.w400,
                                            color: Colors.white),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(Icons.arrow_forward,
                                            color: Colors.white)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              onHover: (event) {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                // width: 240,
                                width: MediaQuery.of(context).size.width * .43,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/innovation.png",
                                      width: 40,
                                      height: 40,
                                      color: Colors.grey.shade400,
                                    ),
                                    defaultText(
                                        "الرؤية والقيم", 14, FontWeight.w400)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              cubit.selectAppBar(7);
                            },
                            child: HoverWidget(
                              hoverChild: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE0B555),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                width: MediaQuery.of(context).size.width * .43,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/worker.png",
                                      color: Colors.white,
                                      width: 40,
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        defaultText(
                                            "كيف نعمل", 14, FontWeight.w400,
                                            color: Colors.white),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(Icons.arrow_forward,
                                            color: Colors.white)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              onHover: (event) {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                // width: 240,
                                width: MediaQuery.of(context).size.width * .43,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/worker.png",
                                      color: Colors.grey.shade400,
                                      width: 40,
                                      height: 40,
                                    ),
                                    defaultText("كيف نعمل", 14, FontWeight.w400)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 25,
                    // ),
                    TitleAndDescriptionWidget(
                        title: "من نحن ؟",
                        description:
                            "لدينا فريق هندسى متخصص فى المجال ، مجهز بأحدس الادوات وافضل الخامات"),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        FixedTimeline.tileBuilder(
                          theme: TimelineTheme.of(context).copyWith(
                              ///////dot position
                              indicatorPosition: 0.35,
                              nodePosition: 0,
                              color: Color(0xffA5702A),
                              connectorTheme:
                                  ConnectorThemeData(color: Color(0xffE0B555))),
                          builder: TimelineTileBuilder.connectedFromStyle(
                            firstConnectorStyle: ConnectorStyle.transparent,
                            lastConnectorStyle: ConnectorStyle.transparent,
                            contentsAlign: ContentsAlign.basic,
                            connectionDirection: ConnectionDirection.after,
                            contentsBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: defaultText("${readMoreData[index]}", 14,
                                    FontWeight.w400,
                                    color: basicC2)),
                            connectorStyleBuilder: (context, index) {
                              return ConnectorStyle.solidLine;
                            },
                            indicatorStyleBuilder: (context, index) {
                              return IndicatorStyle.outlined;
                            },
                            itemCount: showMore ? readMoreData.length : 4,
                            itemExtent: 80.0,
                          ),
                        ),
                        !showMore
                            ? Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                // top: 0,
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 1.5, sigmaY: 1.5),
                                    child: SizedBox(
                                      // the size where the blurring starts
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.14,
                                      // color: Colors.black.withOpacity(0.1),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  showMore = !showMore;
                                                });
                                              },
                                              child: defaultText("المزيد...",
                                                  16, FontWeight.w400,
                                                  color: primaryC3))),
                                    ),
                                  ),
                                ),
                              )
                            : Container()
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                // width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.asset(
                        "assets/images/HandShake.jpeg",
                        width: MediaQuery.of(context).size.width * .45,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              cubit.selectAppBar(6);
                            },
                            child: HoverWidget(
                              hoverChild: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE0B555),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                width: MediaQuery.of(context).size.width * .22,
                                // width: 240,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/innovation.png",
                                      width: 40,
                                      fit: BoxFit.cover,
                                      height: 40,
                                      color: Colors.white,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        defaultText("الرؤية والقيم", 14,
                                            FontWeight.w400,
                                            color: Colors.white),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(Icons.arrow_forward,
                                            color: Colors.white)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              onHover: (event) {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                // width: 240,
                                width: MediaQuery.of(context).size.width * .22,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/innovation.png",
                                      width: 40,
                                      height: 40,
                                      color: Colors.grey.shade400,
                                    ),
                                    defaultText(
                                        "الرؤية والقيم", 14, FontWeight.w400)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              cubit.selectAppBar(7);
                            },
                            child: HoverWidget(
                              hoverChild: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE0B555),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                // width: 240,
                                width: MediaQuery.of(context).size.width * .22,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/worker.png",
                                      color: Colors.white,
                                      width: 40,
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        defaultText(
                                            "كيف نعمل", 14, FontWeight.w400,
                                            color: Colors.white),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(Icons.arrow_forward,
                                            color: Colors.white)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              onHover: (event) {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                height: 100,
                                // width: 240,
                                width: MediaQuery.of(context).size.width * .22,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/worker.png",
                                      color: Colors.grey.shade400,
                                      width: 40,
                                      height: 40,
                                    ),
                                    defaultText("كيف نعمل", 14, FontWeight.w400)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
