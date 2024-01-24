import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../constants.dart';
import '../../data/model/clientsModel.dart';

class MyFooter extends StatelessWidget {
  MyFooter({super.key});
  final List footerImgs = [
    "assets/images/x.png",
    "assets/images/snap.png",
    "assets/images/fb.png",
    "assets/images/youtube.png",
    "assets/images/linkedin.png",
  ];
  final List<ClientsModel> contactData = [
    ClientsModel(
        image: "assets/images/phone.png",
        description: "+966 560031111 -  920004768"),
    ClientsModel(
        image: "assets/images/letter.png", description: "info@ModernCo.com"),
    ClientsModel(
        image: "assets/images/map.png",
        description: "حي الشعلة شارع زهير بن قيس"),
  ];
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
        replacement: Container(
          // padding: EdgeInsets.symmetric(horizontal: 55),
          color: Color(0xff272333),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          // height: 400,
          child: Column(
            children: [
              // Row
              Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, bottom: 18, right: 18),
                      child: SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            //logo
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: InkWell(
                                onTap: () {
                                  cubit.selectAppBar(0);
                                },
                                child: Image.asset(
                                  "assets/images/logoDark.png",
                                  width: 200,
                                  height: 100,
                                ),
                              ),
                            ),
                            // logo text
                            defaultText(
                              "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                              20,
                              FontWeight.w500,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            //social icons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                5,
                                (index) => Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: HoverWidget(
                                    onHover: (event) {},
                                    hoverChild: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: primaryC4,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          footerImgs[index],
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          footerImgs[index],
                                          width: 8,
                                          height: 8,
                                          // fit: BoxFit.fill,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        width: 150,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: defaultText(
                                  "روابط مختصرة", 20, FontWeight.w400,
                                  color: Colors.white),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: List.generate(
                                  cubit.navigatorsScreen.length, (index) {
                                return InkWell(
                                  onTap: () {
                                    cubit.selectAppBar(index);
                                  },
                                  child: HoverWidget(
                                    hoverChild: Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: defaultText(
                                                "${cubit.navigatorsScreen[index]}",
                                                16,
                                                FontWeight.w500,
                                                color: primaryC3)),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17,
                                          color: primaryC3,
                                        )
                                      ],
                                    ),
                                    onHover: (event) {},
                                    child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: defaultText(
                                            "${cubit.navigatorsScreen[index]}",
                                            16,
                                            FontWeight.w500,
                                            color: Colors.white)),
                                  ),
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: defaultText(
                                  "وسائل التواصل", 20, FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                                  List.generate(contactData.length, (index) {
                                return Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          // color: Colors.white,
                                          border:
                                              Border.all(color: Colors.white),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Image.asset(
                                            contactData[index].image,

                                            // width: 8,
                                            // height: 8,
                                            fit: BoxFit.fitHeight,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: defaultText(
                                              contactData[index].description,
                                              14,
                                              FontWeight.w500,
                                              color: Colors.white)),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ]),
                    ),
                  ]),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      // padding: const EdgeInsets.all(50)
                      color: Colors.white,
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          defaultText(
                              "جميع الحقوق محفوظة موقع شركة ار جى بى  @ 2023",
                              8,
                              FontWeight.w400,
                              color: Colors.white),
                          Spacer(),
                          Row(
                            children: [
                              defaultText("صنع في امان", 8, FontWeight.w400,
                                  color: Colors.white),
                              // SizedBox(
                              //   width: 3,
                              // ),
                              Image.asset(
                                "assets/images/aman.png",
                                width: 10,
                                height: 10,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 55),
          color: Color(0xff272333),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          // height: 400,
          child: Column(
            children: [
              //////////////When smaller//////////////////
              MediaQuery.of(context).size.width < 1200
                  ? Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      // alignment: WrapAlignment.spaceEvenly,
                      children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 18.0, bottom: 18, right: 18),
                            child: SizedBox(
                              width: 400,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        cubit.selectAppBar(0);
                                      },
                                      child: Image.asset(
                                        "assets/images/logoDark.png",
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        height: 1.8,
                                        fontFamily: "Alexandria"),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      5,
                                      (index) => Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: HoverWidget(
                                          onHover: (event) {},
                                          hoverChild: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: primaryC4,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                footerImgs[index],
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              // color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                footerImgs[index],
                                                width: 8,
                                                height: 8,
                                                // fit: BoxFit.fill,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: SizedBox(
                              width: 200,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: defaultText(
                                        "روابط مختصرة", 20, FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    children: List.generate(
                                        cubit.navigatorsScreen.length, (index) {
                                      return InkWell(
                                        onTap: () {
                                          // cubit.mainScreenName[index];
                                          cubit.selectAppBar(index);

                                          // cubit.mainScreenName[index];
                                        },
                                        child: HoverWidget(
                                          hoverChild: Row(
                                            children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: defaultText(
                                                      "${cubit.navigatorsScreen[index]}",
                                                      16,
                                                      FontWeight.w500,
                                                      color: primaryC3)),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 17,
                                                color: primaryC3,
                                              )
                                            ],
                                          ),
                                          onHover: (event) {},
                                          child: Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: defaultText(
                                                  "${cubit.navigatorsScreen[index]}",
                                                  16,
                                                  FontWeight.w500,
                                                  color: Colors.white)),
                                        ),
                                      );
                                    }),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: SizedBox(
                              width: 400,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: defaultText(
                                          "وسائل التواصل", 20, FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                          contactData.length, (index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 35,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  // color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    contactData[index].image,

                                                    // width: 8,
                                                    // height: 8,
                                                    fit: BoxFit.fitHeight,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: defaultText(
                                                      contactData[index]
                                                          .description,
                                                      16,
                                                      FontWeight.w500,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        );
                                      }),
                                    ),
                                  ]),
                            ),
                          ),
                        ])
                  :
                  /////////////When Bigger than 1000
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: WrapCrossAlignment.start,
                      // alignment: WrapAlignment.spaceEvenly,
                      children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 18.0, bottom: 18, right: 18),
                            child: SizedBox(
                              width: 400,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: InkWell(
                                      onTap: () {
                                        cubit.selectAppBar(0);
                                      },
                                      child: Image.asset(
                                        "assets/images/logoDark.png",
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        height: 1.8,
                                        fontFamily: "Alexandria"),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      5,
                                      (index) => Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: HoverWidget(
                                          onHover: (event) {},
                                          hoverChild: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: primaryC4,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                footerImgs[index],
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              // color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                footerImgs[index],
                                                width: 8,
                                                height: 8,
                                                // fit: BoxFit.fill,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: SizedBox(
                              width: 200,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: defaultText(
                                        "روابط مختصرة", 20, FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    children: List.generate(
                                        cubit.navigatorsScreen.length, (index) {
                                      return InkWell(
                                        onTap: () {
                                          // cubit.mainScreenName[index];
                                          cubit.selectAppBar(index);

                                          // cubit.mainScreenName[index];
                                        },
                                        child: HoverWidget(
                                          hoverChild: Row(
                                            children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: defaultText(
                                                      "${cubit.navigatorsScreen[index]}",
                                                      16,
                                                      FontWeight.w500,
                                                      color: primaryC3)),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 17,
                                                color: primaryC3,
                                              )
                                            ],
                                          ),
                                          onHover: (event) {},
                                          child: Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: defaultText(
                                                  "${cubit.navigatorsScreen[index]}",
                                                  16,
                                                  FontWeight.w500,
                                                  color: Colors.white)),
                                        ),
                                      );
                                    }),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: SizedBox(
                              width: 400,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: defaultText(
                                          "وسائل التواصل", 20, FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                          contactData.length, (index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 35,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  // color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    contactData[index].image,

                                                    // width: 8,
                                                    // height: 8,
                                                    fit: BoxFit.fitHeight,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: defaultText(
                                                      contactData[index]
                                                          .description,
                                                      16,
                                                      FontWeight.w500,
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        );
                                      }),
                                    ),
                                    // Row(
                                    //   children: [
                                    //     const Padding(
                                    //       padding: EdgeInsets.all(8.0),
                                    //       child: CircleAvatar(
                                    //         radius: 20,
                                    //         backgroundColor: Colors.grey,
                                    //       ),
                                    //     ),
                                    //     Padding(
                                    //         padding: const EdgeInsets.all(8),
                                    //         child: defaultText("info@ModernCo.com", 16,
                                    //             FontWeight.w500,
                                    //             color: Colors.white)),
                                    //   ],
                                    // ),
                                    // Row(
                                    //   children: [
                                    //     const Padding(
                                    //       padding: EdgeInsets.all(8.0),
                                    //       child: CircleAvatar(
                                    //         radius: 20,
                                    //         backgroundColor: Colors.grey,
                                    //       ),
                                    //     ),
                                    //     Padding(
                                    //         padding: const EdgeInsets.all(8),
                                    //         child: defaultText(
                                    //             "حي الشعلة شارع زهير بن قيس",
                                    //             16,
                                    //             FontWeight.w500,
                                    //             color: Colors.white)),
                                    //   ],
                                    // ),
                                  ]),
                            ),
                          ),
                        ]),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      // padding: const EdgeInsets.all(50)
                      color: Colors.white,
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          defaultText(
                              "جميع الحقوق محفوظة موقع شركة ار جى بى  @ 2023",
                              10,
                              FontWeight.w400,
                              color: Colors.white),
                          Spacer(),
                          Row(
                            children: [
                              defaultText("صنع في امان", 14, FontWeight.w400,
                                  color: Colors.white),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset("assets/images/aman.png")
                            ],
                          )
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
