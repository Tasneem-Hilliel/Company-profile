import 'package:flutter/material.dart';

String ksaImage = "assets/images/ksa.jpg";

Color primaryC1 = const Color(0xff272333);
Color primaryC2 = const Color(0xff154555);
Color primaryC3 = const Color(0xffA5702A);
Color primaryC4 = const Color(0xffD19026);
Color primaryC5 = const Color(0xffE0B555);

Color basicC2 = const Color(0xff333333);
Color basicC3 = const Color(0xff979797);

Color basicC4 = const Color(0xffAFAFAF);
Color primaryC7 = const Color(0xffF4F4F4);

defaultText(data,double  size, fontWeight,
    {color = Colors.black,
  double  height = 1.8,
    }) {
  return Text(
    data,
    style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: "Alexandria",
        color: color,
        height: height),
  );
}
