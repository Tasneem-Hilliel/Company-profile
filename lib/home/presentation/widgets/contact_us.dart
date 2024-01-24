import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:company_profile/home/presentation/widgets/navBar/content_navbar.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/defaultTextField.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/text_overImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../constants.dart';
import '../../data/model/clientsModel.dart';
import 'footer.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key});

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

  final items = [
    "assets/images/tools.png",
    "assets/images/tools.png",
    "assets/images/building3.png",
    "assets/images/building4.png",
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController serviceController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // var cubit = BrokerCubit.get(context);
    final List footerImgs = [
      "assets/images/x.png",
      "assets/images/snap.png",
      "assets/images/fb.png",
      "assets/images/youtube.png",
      "assets/images/linkedin.png",
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocBuilder<BrokerCubit, BrokerStates>(
        builder: (context, state) => ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.largerThan(name: MOBILE),
            Condition.largerThan(name: TABLET)
          ],
          replacement: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextOverImage(
                    title: "تواصل معنا",
                    subTitle:
                        "إذا كنت ترغب في الاتصال بمجموعة المهيدب مباشرة، فلا تتردد في الاتصال بنا من خلال أي من قنواتنا المذكورة أدناه",
                    image: "assets/images/contactbg.png"),
                ContentNavBar(
                    navcontent: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: defaultText("تواصل معنا", 12, FontWeight.w500,
                      color: primaryC2),
                )),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          defaultText("فروعنا", 20, FontWeight.w600,
                              color: primaryC3),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              width: MediaQuery.of(context).size.width * .9,
                              child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: defaultText(
                                        "الدمام", 20, FontWeight.w400,
                                        // color: Colors.white
                                      ),
                                    ),
                                    Column(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: List.generate(
                                          contactData.length, (index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  // color: Colors.white,
                                                  border: Border.all(
                                                      color: Color(0xff979797)),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    contactData[index].image,
                                                    width: 8,
                                                    height: 8,
                                                    fit: BoxFit.fitHeight,
                                                    color: Colors.black,
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
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        );
                                      }),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      width: MediaQuery.of(context).size.width *
                                          .8,
                                      // alignment: Alignment.bottomRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          defaultText("صندوق بريد: 8475", 12,
                                              FontWeight.w400),
                                          defaultText("الرمز البريدى : 34263",
                                              12, FontWeight.w400),
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            defaultText("ساعات العمل", 20, FontWeight.w600,
                                color: primaryC3),
                            const SizedBox(
                              height: 10,
                            ),
                            Card(
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width: MediaQuery.of(context).size.width * 1,
                                child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: defaultText(
                                          "نسعد بخدمتكم", 20,
                                          FontWeight.w400,
                                          // color: Colors.white
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                text: "من ",
                                                children: [
                                              TextSpan(
                                                text: "الاحد ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "الى ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "الخميس ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                text: "من الساعة ",
                                                children: [
                                              TextSpan(
                                                text: "8:00 ص ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "حتى ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "5:00 م ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ])),
                                      ),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width * .9,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: defaultText(
                                      "تواصل معنا", 20, FontWeight.w600,
                                      color: primaryC3),
                                ),
                                Form(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: nameController,
                                          prefix: Icon(Icons.person),
                                          labelText: "الاسم"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: phoneController,
                                          prefix: Icon(Icons.phone_enabled),
                                          labelText: "الجوال"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: emailController,
                                          prefix: Icon(Icons.email),
                                          labelText: "البريد الالكتروني"),
                                    ),
                                    // MediaQuery.of(context).size.width>800?
                                    // Row(
                                    //   children: [
                                    //     Expanded(
                                    //       child: Padding(
                                    //         padding: const EdgeInsets.symmetric(
                                    //             vertical: 6, horizontal: 4),
                                    //         child: DefaultTextField(
                                    //             controller: phoneController,
                                    //             prefix:
                                    //                 Icon(Icons.phone_enabled),
                                    //             labelText: "الجوال"),
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: Padding(
                                    //         padding: const EdgeInsets.symmetric(
                                    //             vertical: 6, horizontal: 4),
                                    //         child: DefaultTextField(
                                    //             controller: emailController,
                                    //             prefix: Icon(Icons.email),
                                    //             labelText: "البريد الالكتروني"),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          suffix:
                                              Icon(Icons.keyboard_arrow_down),
                                          controller: serviceController,
                                          prefix:
                                              Icon(Icons.all_inbox_outlined),
                                          labelText: "الخدمة"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                        controller: messageController,
                                        labelText: "الرسالة",
                                        maxLines: 6,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: double.infinity,
                                          height: 45,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: primaryC4),
                                          child: Center(
                                              child: Text(
                                            "ارسال",
                                            style: TextStyle(
                                                fontFamily: "Alexandria",
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20),
                                          )
                                              // child: defaultText(, 20,
                                              //     FontWeight.w400,
                                              //     color: Colors.white),
                                              ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: defaultText("تابعونا على", 20, FontWeight.w600,
                      color: primaryC3),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
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
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                footerImgs[index],
                                color: Colors.black,
                              ),
                            ),
                          ),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              border: Border.all(color: Color(0xff979797)),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                footerImgs[index],
                                width: 8,
                                height: 8,
                                // fit: BoxFit.fill,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/location.png",
                  fit: BoxFit.cover,
                ),
                MyFooter()
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextOverImage(
                    title: "تواصل معنا",
                    subTitle:
                        "إذا كنت ترغب في الاتصال بمجموعة المهيدب مباشرة، فلا تتردد في الاتصال بنا من خلال أي من قنواتنا المذكورة أدناه",
                    image: "assets/images/contactbg.png"),
                ContentNavBar(
                    navcontent: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: defaultText("تواصل معنا", 16, FontWeight.w500,
                      color: primaryC2),
                )),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // alignment: WrapAlignment.center,
                      // alignment: WrapAlignment.spaceAround,
                      // crossAxisAlignment: WrapCrossAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            defaultText("فروعنا", 28, FontWeight.w600,
                                color: primaryC3),
                            SizedBox(
                              height: 10,
                            ),
                            Card(
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width:
                                    //  600,
                                    MediaQuery.of(context).size.width * .45,
                                child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: defaultText(
                                          "الدمام", 20, FontWeight.w400,
                                          // color: Colors.white
                                        ),
                                      ),
                                      Column(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
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
                                                        color:
                                                            Color(0xff979797)),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                      contactData[index].image,

                                                      // width: 8,
                                                      // height: 8,
                                                      fit: BoxFit.fitHeight,
                                                      color: Colors.black,
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
                                                        color: Colors.black)),
                                              ],
                                            ),
                                          );
                                        }),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .3,
                                        // alignment: Alignment.bottomRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            defaultText("صندوق بريد: 8475", 12,
                                                FontWeight.w400),
                                            defaultText("الرمز البريدى : 34263",
                                                12, FontWeight.w400),
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            SizedBox(height: 20),
                            defaultText("ساعات العمل", 28, FontWeight.w600,
                                color: primaryC3),
                            const SizedBox(
                              height: 10,
                            ),
                            // Spacer(),
                            Card(
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width: MediaQuery.of(context).size.width * .45,
                                // width: 600,

                                child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: defaultText(
                                          "نسعد بخدمتكم", 20, FontWeight.w400,
                                          // color: Colors.white
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                text: "من ",
                                                children: [
                                              TextSpan(
                                                text: "الاحد ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "الى ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "الخميس ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                text: "من الساعة ",
                                                children: [
                                              TextSpan(
                                                text: "8:00 ص ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "حتى ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC1,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "5:00 م ",
                                                style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: primaryC3,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ])),
                                      ),
                                    ]),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Spacer(),
                        Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width * .45,
                            // width: 600,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: defaultText(
                                        "تواصل معنا", 28, FontWeight.w600,
                                        color: primaryC3),
                                  ),
                                  Form(
                                      child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 4),
                                        child: DefaultTextField(
                                            controller: nameController,
                                            prefix: Icon(Icons.person),
                                            labelText: "الاسم"),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 6,
                                                      horizontal: 4),
                                              child: DefaultTextField(
                                                  controller: phoneController,
                                                  prefix:
                                                      Icon(Icons.phone_enabled),
                                                  labelText: "الجوال"),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 6,
                                                      horizontal: 4),
                                              child: DefaultTextField(
                                                  controller: emailController,
                                                  prefix: Icon(Icons.email),
                                                  labelText:
                                                      "البريد الالكتروني"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 4),
                                        child: DefaultTextField(
                                            suffix:
                                                Icon(Icons.keyboard_arrow_down),
                                            controller: serviceController,
                                            prefix:
                                                Icon(Icons.all_inbox_outlined),
                                            labelText: "الخدمة"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 4),
                                        child: DefaultTextField(
                                          controller: messageController,
                                          labelText: "الرسالة",
                                          maxLines: 6,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 4),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width: double.infinity,
                                            height: 45,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: primaryC4),
                                            child: Center(
                                                child: Text(
                                              "ارسال",
                                              style: TextStyle(
                                                  fontFamily: "Alexandria",
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20),
                                            )
                                                // child: defaultText(, 20,
                                                //     FontWeight.w400,
                                                //     color: Colors.white),
                                                ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  //   ],
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: defaultText("تابعونا على", 28, FontWeight.w600,
                      color: primaryC3),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Row(
                    // mainAxisAlignment:
                    //     MainAxisAlignment.center,
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
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                footerImgs[index],
                                color: Colors.black,
                              ),
                            ),
                          ),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              border: Border.all(color: Color(0xff979797)),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                footerImgs[index],
                                width: 8,
                                height: 8,
                                // fit: BoxFit.fill,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/location.png",
                  fit: BoxFit.cover,
                ),
                MyFooter()
              ],
            ),
          ),
        ),
      ),
      // ),
      // ),
    );
  }
}
