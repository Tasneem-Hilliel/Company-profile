import 'package:company_profile/constants.dart';
import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/presentation/widgets/layout.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(DevicePreview(
    // enabled: true,
    enabled: false,
    builder: (context) {
      return const MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BrokerCubit(),
      child: MaterialApp(
        theme: ThemeData().copyWith(
          // scaffoldBackgroundColor: Colors.white,
          colorScheme: ThemeData().colorScheme.copyWith(primary: basicC4),
        ),
        builder: (context, child) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, child!),
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(240, name: MOBILE),
            ResponsiveBreakpoint.resize(350, name: MOBILE),
            // ResponsiveBreakpoint.autoScale(650, name: TABLET),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          breakpointsLandscape: const [
            ResponsiveBreakpoint.resize(560, name: MOBILE),
            ResponsiveBreakpoint.autoScale(812, name: MOBILE),
            ResponsiveBreakpoint.resize(1024, name: TABLET),
            ResponsiveBreakpoint.autoScale(1120, name: TABLET),
          ],
        ),
        debugShowCheckedModeBanner: false,
        home: Directionality(textDirection: TextDirection.rtl, child: Layout()),
      ),
    );
  }
}
