// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:company_profile/home/data/model/workModel.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/title_description..dart';
import 'package:company_profile/home/presentation/widgets/navBar/content_navbar.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/text_overImage.dart';

import '../../../../constants.dart';
import '../footer.dart';
import 'previousWork_item.dart';

class PreviousWorkBody extends StatelessWidget {
  PreviousWorkBody({
    Key? key,
    // required this.withFooter,
  }) : super(key: key);
// final  bool withFooter;
  final List<WorkModel> worklist = [
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building4.png'),
    WorkModel(
        workType: "ترفيهي",
        workTitle: "بوليفارد الرياض",
        workDescription: "",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "مجمع فيلات الفاخرية",
        workDescription:
            'يتكون من 30 فيلا متصلة ومنفصلة بمساحات اجمالية 14,800 م2',
        image: 'assets/images/building1.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "فيلا دوبلاكس",
        workDescription: "خاصة\n مساحات 960 - 1450 - 1630 م",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "مجمع فيلات الفاخرية",
        workDescription:
            'يتكون من 30 فيلا متصلة ومنفصلة بمساحات اجمالية 14,800 م2',
        image: 'assets/images/building1.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building4.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "فيلا دوبلاكس",
        workDescription: "خاصة\n مساحات 960 - 1450 - 1630 م",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "ترفيهي",
        workTitle: "بوليفارد الرياض",
        workDescription: "",
        image: 'assets/images/building3.png'),
  ];
  @override
  Widget build(BuildContext context) {
    var cubit = BrokerCubit.get(context);

    return BlocBuilder<BrokerCubit, BrokerStates>(
      builder: (context, state) => ResponsiveVisibility(
        visible: false,
        visibleWhen: [
          Condition.largerThan(name: MOBILE),
          Condition.largerThan(name: TABLET)
        ],
        replacement: SingleChildScrollView(
          child: Column(
            children: [
              TextOverImage(
                  title: "اعمالنا",
                  subTitle: "جميع الاعمال",
                  image: "assets/images/previous_workbg.png"),
              ContentNavBar(
                  navcontent: Row(
                children: [
                  InkWell(
                    onTap: () {
                      cubit.selectAppBar(11);
                      ///////////////
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: defaultText("اعمالنا", 12, FontWeight.w500,
                          color: basicC4),
                    ),
                  ),
                  defaultText("/", 12, FontWeight.w500, color: basicC4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: defaultText("عرض جميع الاعمال", 12, FontWeight.w500,
                        color: primaryC2),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child:
                    // PreviousWorkBody()
                    Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleAndDescriptionWidget(
                      title: "اعمالنا",
                      description:
                          "تقدم شركة البناء الحديث للمقاولات العامة خدمتها لتغطى مجموعه متنوعه من المشاريع المختلفة مثل : التجارية - السكنية - الترفيهية - التعليمية - الصناعية والبنية التحتية وغيرها",
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 15.0,
                        childAspectRatio: 5 / 4.9,
                        maxCrossAxisExtent:
                            MediaQuery.of(context).size.width * .9,
                      ),
                      children: List.generate(worklist.length, (index) {
                        return PreviousWorkItem(
                          cubit: cubit,
                          image: worklist[index].image,
                          workType: worklist[index].workType!,
                          workTitle: worklist[index].workTitle,
                          workDescription: worklist[index].workDescription,
                        );
                      }),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              // withFooter ? MyFooter() : Container()
              MyFooter()
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextOverImage(
                  title: "اعمالنا",
                  subTitle: "جميع الاعمال",
                  image: "assets/images/previous_workbg.png"),
              ContentNavBar(
                  navcontent: Row(
                children: [
                  InkWell(
                    onTap: () {
                      cubit.selectAppBar(11);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: defaultText("اعمالنا", 16, FontWeight.w500,
                          color: basicC4),
                    ),
                  ),
                  defaultText("/", 16, FontWeight.w500, color: basicC4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: defaultText("عرض جميع الاعمال", 16, FontWeight.w500,
                        color: primaryC2),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child:
                    // PreviousWorkBody()
                    Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        /////////////////
                      },
                      child: defaultText("اعمالنا", 42, FontWeight.w400,
                          color: primaryC3),
                    ),
                    defaultText(
                        "تقدم شركة البناء الحديث للمقاولات العامة خدمتها لتغطى مجموعه متنوعه من المشاريع المختلفة مثل : التجارية - السكنية - الترفيهية - التعليمية - الصناعية والبنية التحتية وغيرها",
                        18,
                        FontWeight.w500,
                        color: primaryC2),
                    SizedBox(
                      height: 60,
                    ),
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 18.0,
                        mainAxisSpacing: 18.0,
                        childAspectRatio: 5 / 4,

                        // crossAxisCount: 4,
                        // crossAxisSpacing: 15,
                        // childAspectRatio: 5 / 4,

                        // mainAxisSpacing: 15, maxCrossAxisExtent: 400,
                      ),
                      children: List.generate(worklist.length, (index) {
                        return PreviousWorkItem(
                          cubit: cubit,
                          image: worklist[index].image,
                          workType: worklist[index].workType!,
                          workTitle: worklist[index].workTitle,
                          workDescription: worklist[index].workDescription,
                        );
                      }),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              // withFooter ? MyFooter() : Container()

              MyFooter()
            ],
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
