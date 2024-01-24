import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:company_profile/home/presentation/widgets/footer.dart';
import 'package:company_profile/home/presentation/widgets/navBar/content_navbar.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/text_overImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
      builder: (context, state) => ResponsiveVisibility(
        visible: false,
        visibleWhen: [
          Condition.largerThan(name: MOBILE),
          Condition.largerThan(name: TABLET),
        ],
        replacement: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextOverImage(
                  title: "اعمالنا",
                  subTitle: "مجمع فيلات الفاخرية",
                  image: "assets/images/houses.png"),
              ContentNavBar(
                  navcontent: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: InkWell(
                      onTap: () {
                        cubit.selectAppBar(11);
                      },
                      child: defaultText("اعمالنا", 12, FontWeight.w500,
                          color: basicC4),
                    ),
                  ),
                  defaultText("/", 12, FontWeight.w500, color: basicC4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: InkWell(
                      onTap: () {
                        cubit.selectAppBar(3);

                        /// its done dont forget it
                      },
                      child: defaultText(
                          "عرض جميع الاعمال", 12, FontWeight.w500,
                          color: basicC4),
                    ),
                  ),
                  defaultText("/", 12, FontWeight.w500, color: basicC4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: InkWell(
                      onTap: () {},
                      child: defaultText(
                          "مجمع فيلات الفاخرية", 12, FontWeight.w500,
                          color: primaryC2),
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: defaultText("مجمع فيلات الفاخرية", 30, FontWeight.w400,
                    color: primaryC3),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: defaultText(
                      "يتكون من 30 فيلا متصلة ومنفصلة بمساحات اجمالية 14,800 م2",
                      14,
                      FontWeight.w400,
                      color: primaryC2),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
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
                          // height: ,
                          height: MediaQuery.of(context).size.height * .5,
                        ),
                        Center(
                          child: Row(
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
              MyFooter()
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // MyNavBar(),
              TextOverImage(
                  title: "اعمالنا",
                  subTitle: "مجمع فيلات الفاخرية",
                  image: "assets/images/houses.png"),
              ContentNavBar(
                  navcontent: Row(
                children: [
                  InkWell(
                      onTap: () {
                        return Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            cubit.selectAppBar(11);
                          },
                          child: defaultText("اعمالنا", 16, FontWeight.w500,
                              color: basicC4),
                        ),
                      )),
                  defaultText("/", 16, FontWeight.w500, color: basicC4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: InkWell(
                      onTap: () {
                        cubit.selectAppBar(3);
                      },
                      child: defaultText(
                          "عرض جميع الاعمال", 16, FontWeight.w500,
                          color: basicC4),
                    ),
                  ),
                  defaultText("/", 16, FontWeight.w500, color: basicC4),
                  InkWell(
                      onTap: () {
                        return Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {},
                          child: defaultText(
                              "مجمع فيلات الفاخرية", 16, FontWeight.w500,
                              color: primaryC2),
                        ),
                      )),
                ],
              )),
              // defaultText("data", size, weight)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: defaultText("مجمع فيلات الفاخرية", 38, FontWeight.w400,
                    color: primaryC3),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: defaultText(
                      "يتكون من 30 فيلا متصلة ومنفصلة بمساحات اجمالية 14,800 م2",
                      16,
                      FontWeight.w400,
                      color: primaryC2),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              SizedBox(
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
              MyFooter()
            ],
            //   ),
            // ),
            // ),
          ),
        ),
      ),
    );
  }
}
