import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

mixin AppColor {
  static const primaryClr = Color.fromRGBO(36, 96, 185, 1);
  static const red = Color.fromRGBO(238, 29, 37, 1);
}

mixin AppIcons {
  static const home = 'assets/icons/home.svg';
  static const checklist = 'assets/icons/checklist.svg';
  static const calender = 'assets/icons/calendar.svg';
  static const rajaswa = 'assets/icons/Rajaswa.svg';
  static const suggestion = 'assets/icons/suggestion.svg';
  static const nagarpalik = 'assets/icons/nagarpalika_Stats.svg';
  static const logo = 'assets/icons/logo.png';
}

buildsizedbox() {
  return SizedBox(
    height: 3.5.h,
  );
}
