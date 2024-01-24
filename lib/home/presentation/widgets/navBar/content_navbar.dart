// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';

import '../../../../constants.dart';

class ContentNavBar extends StatelessWidget {
  const ContentNavBar({
    Key? key,
    required this.navcontent,
  }) : super(key: key);

  final Widget navcontent;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrokerCubit, BrokerStates>(builder: (context, state) {
      var cubit = BrokerCubit.get(context);
      return ResponsiveVisibility(
        visible: false,
        visibleWhen: [
          Condition.largerThan(name: MOBILE),
          Condition.largerThan(name: TABLET),
        ],
        replacement: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes the position of the shadow
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 45,
          width: double.infinity,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    cubit.selectAppBar(0);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: defaultText("الرئيسية", 12, FontWeight.w500,
                        color: basicC4),
                  )),
              defaultText("/", 12, FontWeight.w500, color: Color(0xffAFAFAF)),
              navcontent
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes the position of the shadow
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 50),
          height: 50,
          width: double.infinity,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    cubit.selectAppBar(0);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: defaultText("الرئيسية", 16, FontWeight.w500,
                        color: basicC4),
                  )),
              defaultText("/", 16, FontWeight.w500, color: Color(0xffAFAFAF)),
              navcontent
            ],
          ),
        ),
      );
    });
  }
}
