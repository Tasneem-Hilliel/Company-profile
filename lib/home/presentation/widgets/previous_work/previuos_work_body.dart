import 'package:company_profile/home/presentation/widgets/differentWidgets/title_description..dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hovering/hovering.dart';

import '../../../../constants.dart';
import '../../../data/manager/cubit.dart';
import '../../../data/manager/states.dart';
import '../../../data/model/workModel.dart';

class PreviousServicesBody extends StatelessWidget {
  PreviousServicesBody({super.key});

  final List<WorkModel> worklist = [
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building1.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building1.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building2.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building4.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building2.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var cubit = BrokerCubit.get(context);

    return BlocBuilder<BrokerCubit, BrokerStates>(
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndDescriptionWidget(
              title: "اعمالنا",
              description:
                  "تقدم شركة البناء الحديث للمقاولات العامة خدمتها لتغطى مجموعه متنوعه من المشاريع المختلفة مثل : التجارية - السكنية - الترفيهية - التعليمية - الصناعية والبنية التحتية وغيرها"),
        
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
              return Container(
                height: 100,
                width: 100,
                child: InkWell(
                  onTap: () {
                    cubit.selectAppBar(7);

                    
                  },
                  child: HoverWidget(
                    onHover: (event) {},
                    hoverChild: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: SizedBox(
                            height: double.infinity,
                            width: double.infinity,
                            child: Image.asset(
                              "${worklist[index].image}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                color: primaryC4,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            height: 40,
                            width: 80,
                            child: Center(
                                child: Text("${worklist[index].workType}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: "Alexandria",
                                        fontWeight: FontWeight.w400))),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: double.infinity,
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              gradient: LinearGradient(
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(60, 39, 35, 51),
                                  Color.fromARGB(0, 39, 35, 51),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              defaultText("${worklist[index].workTitle}", 10,
                                  FontWeight.w400,
                                  color: primaryC4),
                              SizedBox(
                                height: 5,
                              ),
                              defaultText("${worklist[index].workDescription}",
                                  10, FontWeight.w400,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Opacity(
                            opacity: 0.85,
                            child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: primaryC4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "تعرف على المزيد",
                                      style: TextStyle(
                                          fontFamily: "Alexandria",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: primaryC2),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    )
                                    // defaultText("تعرف على المزيد", 15,
                                    //     FontWeight.w500,
                                    //     color: primaryC2),
                                    ,
                                    Icon(
                                      Icons.arrow_forward,
                                      color: primaryC2,
                                    )
                                  ],
                                )),
                          ),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: SizedBox(
                            height: double.infinity,
                            width: double.infinity,
                            child: Image.asset(
                              "${worklist[index].image}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                color: primaryC4,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            height: 40,
                            width: 80,
                            child: Center(
                                child: Text("${worklist[index].workType}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: "Alexandria",
                                        fontWeight: FontWeight.w400))),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: double.infinity,
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              gradient: LinearGradient(
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(220, 39, 35, 51),
                                  Color.fromARGB(60, 39, 35, 51),
                                  Color.fromARGB(0, 39, 35, 51),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              defaultText("${worklist[index].workTitle}", 10,
                                  FontWeight.w400,
                                  color: primaryC4),
                              SizedBox(
                                height: 5,
                              ),
                              defaultText("${worklist[index].workDescription}",
                                  10, FontWeight.w400,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
