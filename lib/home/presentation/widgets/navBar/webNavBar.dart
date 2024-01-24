// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';

import '../../../../constants.dart';

class MyNavBar extends StatelessWidget {
  MyNavBar({
    Key? key,
    required this.drawerFunction,
  }) : super(key: key);

  final Function drawerFunction;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrokerCubit, BrokerStates>(
      builder: (context, state) {
        var cubit = BrokerCubit.get(context);
        return ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.largerThan(name: MOBILE),
            Condition.largerThan(name: TABLET)
          ],
          replacement: Container(
            // padding: EdgeInsets.symmetric(
            //     // horizontal: 55
            //     horizontal: 0),
            width: double.infinity,
            height: 70,
            color: cubit.selectedIndex == 10 || cubit.selectedIndex == 11
                ? Colors.white
                : Color.fromARGB(255, 39, 35, 51),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, top: 10, right: 40),
                  child: InkWell(
                    onTap: () {
                      cubit.selectAppBar(0);
                    },
                    child: Image.asset(
                      cubit.selectedIndex == 10 || cubit.selectedIndex == 11
                          ? "assets/images/logoLight.png"
                          : "assets/images/logoDark.png",
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 32,
                          height: 32,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ).copyWith(
                              shape: MaterialStateProperty.resolveWith<
                                  RoundedRectangleBorder>(
                                (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: primaryC4));
                                  }
                                  return RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: cubit.selectedIndex == 10 ||
                                                  cubit.selectedIndex == 11
                                              ? Colors.black
                                              : Color.fromARGB(
                                                  28, 255, 255, 255)));
                                },
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return primaryC4;
                                  }
                                  return cubit.selectedIndex == 10 ||
                                          cubit.selectedIndex == 11
                                      ? Colors.white
                                      : Color.fromARGB(28, 255, 255, 255);
                                },
                              ),
                            ),
                            onPressed: () {},
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(28, 255, 255, 255),
                              child: Text(
                                "EN",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: cubit.selectedIndex == 10 ||
                                            cubit.selectedIndex == 11
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () => drawerFunction(),
                        child: HoverWidget(
                          onHover: (event) {},
                          hoverChild: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  color: primaryC4,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: primaryC4
                                      // cubit.selectedIndex == 10||cubit.selectedIndex == 11
                                      //     ? Color.fromARGB(255, 39, 35, 51)
                                      //     : Colors.white
                                      )),
                              child: Icon(Icons.menu_rounded,
                                  size: 15,
                                  color: cubit.selectedIndex == 10 ||
                                          cubit.selectedIndex == 11
                                      ? Color.fromARGB(255, 39, 35, 51)
                                      : Colors.white)),
                          child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: cubit.selectedIndex == 10 ||
                                              cubit.selectedIndex == 11
                                          ? Color.fromARGB(255, 39, 35, 51)
                                          : Colors.white)),
                              child: Icon(Icons.menu_rounded,
                                  size: 15,
                                  color: cubit.selectedIndex == 10 ||
                                          cubit.selectedIndex == 11
                                      ? Color.fromARGB(255, 39, 35, 51)
                                      : Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
                // horizontal: 55
                horizontal: 0),
            width: double.infinity,
            height: 80,
            color: cubit.selectedIndex == 10 || cubit.selectedIndex == 11
                ? Colors.white
                : Color.fromARGB(255, 39, 35, 51),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: 10,
                      top: 10,
                      right: MediaQuery.of(context).size.width * .03),
                  child: InkWell(
                    onTap: () {
                      cubit.selectAppBar(0);
                    },
                    child: Image.asset(
                      cubit.selectedIndex == 10 || cubit.selectedIndex == 11
                          ? "assets/images/logoLight.png"
                          : "assets/images/logoDark.png",
                      width: MediaQuery.of(context).size.width * .1,
                      height: MediaQuery.of(context).size.height * .1,
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children:
                      List.generate(cubit.navigatorsScreen.length - 1, (index) {
                    return InkWell(
                      onTap: () {
                        cubit.selectAppBar(index);
                        print(cubit.navigatorsScreen[index]);
                      },
                      child: HoverWidget(
                        onHover: (event) {},
                        hoverChild: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 25, left: 20, right: 20),
                              child: defaultText(
                                cubit.navigatorsScreen[index],
                                14,
                                FontWeight.w400,
                                color: primaryC4,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 42,
                              height: 1,
                              color: primaryC4,
                            )
                          ],
                        ),
                        child: cubit.selections[index]
                            ? Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25, left: 20, right: 20),
                                    child: defaultText(
                                      cubit.navigatorsScreen[index],
                                      14,
                                      FontWeight.w400,
                                      color: primaryC4,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 42,
                                    height: 1,
                                    color: primaryC4,
                                  )
                                ],
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 20, right: 20),
                                child: defaultText(
                                  cubit.navigatorsScreen[index],
                                  14,
                                  FontWeight.w400,
                                  color: cubit.selectedIndex == 10 ||
                                          cubit.selectedIndex == 11
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                      ),
                    );
                  }),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 38,
                          height: 38,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ).copyWith(
                              shape: MaterialStateProperty.resolveWith<
                                  RoundedRectangleBorder>(
                                (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Color(0xffD19026)));
                                  }
                                  return RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: cubit.selectedIndex == 10 ||
                                                  cubit.selectedIndex == 11
                                              ? Colors.black
                                              : Color.fromARGB(
                                                  28, 255, 255, 255)));
                                },
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return Color(0xffD19026);
                                  }
                                  return cubit.selectedIndex == 10 ||
                                          cubit.selectedIndex == 11
                                      ? Colors.white
                                      : Color.fromARGB(28, 255, 255, 255);
                                },
                              ),
                            ),
                            onPressed: () {},
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(28, 255, 255, 255),
                              child: Text(
                                "EN",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: cubit.selectedIndex == 10 ||
                                            cubit.selectedIndex == 11
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                          height: 38,
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom().copyWith(
                              shape: MaterialStateProperty.resolveWith<
                                  RoundedRectangleBorder>(
                                (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Color(0xffD19026)));
                                  }
                                  return RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: cubit.selectedIndex == 10 ||
                                                  cubit.selectedIndex == 11
                                              ? Colors.black
                                              : Colors.white));
                                },
                              ),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return Color(0xffD19026);
                                  }
                                  return cubit.selectedIndex == 10 ||
                                          cubit.selectedIndex == 11
                                      ? Colors.white
                                      : Color.fromARGB(28, 255, 255, 255);
                                },
                              ),
                            ),
                            onPressed: () {
                              // cubit.selectAppBar(10);
                              cubit.selectAppBar(5);
                            },
                            child: Text(
                              "تواصل معنا",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Alexandria",
                                  color: cubit.selectedIndex == 10 ||
                                          cubit.selectedIndex == 11
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
