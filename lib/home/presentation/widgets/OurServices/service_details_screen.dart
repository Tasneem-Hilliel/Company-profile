import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:company_profile/home/presentation/widgets/navBar/content_navbar.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/text_overImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants.dart';
import '../footer.dart';

class ServiceDetailsScreen extends StatefulWidget {
  ServiceDetailsScreen({super.key});

  @override
  State<ServiceDetailsScreen> createState() => _ServiceDetailsScreenState();
}

class _ServiceDetailsScreenState extends State<ServiceDetailsScreen> {
  final items = [
    "assets/images/tools.png",
    "assets/images/tools.png",
    "assets/images/building3.png",
    "assets/images/building4.png",
  ];
  final _controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var cubit = BrokerCubit.get(context);

    return BlocBuilder<BrokerCubit, BrokerStates>(
      builder: (context, state) => SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
                Condition.largerThan(name: TABLET),
              ],
              replacement: Column(
                children: [
                  TextOverImage(
                      title: "خدماتنا",
                      subTitle: "انشاء البماني وصيانتها",
                      image: "assets/images/houses.png"),
                  ContentNavBar(
                      navcontent: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: InkWell(
                          onTap: () {
                            cubit.selectAppBar(4);
                          },
                          child: defaultText("خدماتنا", 12, FontWeight.w500,
                              color: basicC4),
                        ),
                      ),
                      defaultText("/", 12, FontWeight.w500, color: basicC4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: defaultText(
                            "انشاء المباني وصيانتها", 12, FontWeight.w500,
                            color: primaryC2),
                      ),
                    ],
                  )),
                ],
              ),
              child: Column(
                children: [
                   TextOverImage(
                      title: "خدماتنا",
                      subTitle: "انشاء البماني وصيانتها",
                      image: "assets/images/houses.png"),
                  ContentNavBar(
                      navcontent: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            cubit.selectAppBar(4);
                          },
                          child: defaultText("خدماتنا", 16, FontWeight.w500,
                              color: basicC4),
                        ),
                      ),
                      defaultText("/", 16, FontWeight.w500, color: basicC4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: defaultText(
                            "انشاء المباني وصيانتها", 16, FontWeight.w500,
                            color: primaryC2),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [
                Condition.largerThan(name: MOBILE),
                Condition.largerThan(name: TABLET),
              ],
              replacement: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    defaultText("مجمع فيلات الفاخرية", 36, FontWeight.w400,
                        color: Color(0xffA5702A)),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        // width: MediaQuery.of(context).size.width * .9,
                        child: defaultText(
                            "تقوم شركة البناء الحديث للمقاولات العامة بكافة أعمال المقاولات من حيث إنشاء وصيانة المباني، مثل العقارات السكنية والشركات الخاصة، وتشييد المدارس والمستشفيات والمراكز التجارية والمولات، بالإضافة للفلل والقصور والبيوت وغير ذلك، وتتميز المؤسسة بتوفير عدد كبير من العمالة المتخصصة في أعمال البناء المختلفة ومتطلباتها، مثل السباكة والنجارة والحدادة والصرف الصحي وغيرها بالتنسيق مع أفضل المهندسين المحترفين، بالإضافة إلى الاستشاريين في المجال الهندسي والإنشائي والمعماري مع توفير كافة مواد البناء اللازمة والأدوات الضرورية للعمل.  الاختيار الاول الثانى  الثالت",
                            18,
                            FontWeight.w500,
                          
                            color: primaryC2),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // cubit.selectAppBar(8);
                      },
                      child: SizedBox(
                          height: 38,
                          width: 160,
                          child: HoverWidget(
                            hoverChild: Container(
                              decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.white),
                                  color: primaryC4,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "طلب الخدمة",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Alexandria",
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 18,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            onHover: (event) {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  // color: primaryC4,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "طلب الخدمة",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Alexandria",
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: defaultText(
                            "مجمع فيلات الفاخرية", 40, FontWeight.w400,
                            color: Color(0xffA5702A)),
                      ),
                    ),
                    // defaultText("مجمع فيلات الفاخرية", 40, FontWeight.w400,
                    //     color: Color(0xffA5702A)),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: defaultText(
                            "تقوم شركة البناء الحديث للمقاولات العامة بكافة أعمال المقاولات من حيث إنشاء وصيانة المباني، مثل العقارات السكنية والشركات الخاصة، وتشييد المدارس والمستشفيات والمراكز التجارية والمولات، بالإضافة للفلل والقصور والبيوت وغير ذلك، وتتميز المؤسسة بتوفير عدد كبير من العمالة المتخصصة في أعمال البناء المختلفة ومتطلباتها، مثل السباكة والنجارة والحدادة والصرف الصحي وغيرها بالتنسيق مع أفضل المهندسين المحترفين، بالإضافة إلى الاستشاريين في المجال الهندسي والإنشائي والمعماري مع توفير كافة مواد البناء اللازمة والأدوات الضرورية للعمل.  الاختيار الاول الثانى  الثالت",
                            18,
                            FontWeight.w500,
                            color: primaryC2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                            height: 35,
                            width: 140,
                            child: HoverWidget(
                              hoverChild: Container(
                                decoration: BoxDecoration(
                                    color: primaryC4,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "طلب الخدمة",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Alexandria",
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 18,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              onHover: (event) {},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    // color: primaryC4,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "طلب الخدمة",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Alexandria",
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
                Condition.largerThan(name: TABLET),
              ],
              replacement: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .5,
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentIndex = value;
                  },
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Image(
                          image: AssetImage(items[index]),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .5,
                        ),
                        Center(
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    if (currentIndex >= 0) {
                                      _controller.previousPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    }
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    if (currentIndex >= 0) {
                                      _controller.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    }
                                    if (currentIndex == items.length - 1) {
                                      setState(() {
                                        currentIndex = 0;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: items.length,
                              effect: ExpandingDotsEffect(
                                  dotColor: Colors.white,
                                  activeDotColor: primaryC4,
                                  dotWidth: 10,
                                  dotHeight: 10),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .8,
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentIndex = value;
                  },
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Image(
                          image: AssetImage(items[index]),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .8,
                        ),
                        Center(
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    if (currentIndex >= 0) {
                                      _controller.previousPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    }
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    if (currentIndex >= 0) {
                                      _controller.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    }
                                    if (currentIndex == items.length - 1) {
                                      setState(() {
                                        currentIndex = 0;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: items.length,
                              effect: ExpandingDotsEffect(
                                  dotColor: Colors.white,
                                  activeDotColor: primaryC4,
                                  dotWidth: 10,
                                  dotHeight: 10),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            MyFooter()
          ],
        ),
      ),
    );
  }
}
