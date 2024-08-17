import 'package:flutter/material.dart';

class HomeGraphModel {
  final String mTitle;
  final String mTitleAr;
  final String ftitle;
  final String ftitleAr;
  final String ltitle;
  final String ltitleAr;
  final String graphTitle;
  final String graphTitleAr;
  int totalCount;
  int completedCount;
  final Color cColors;
  final Color pColor;
  final Gradient tileColor;

  HomeGraphModel({
    required this.mTitle,
    required this.mTitleAr,
    required this.ftitle,
    required this.ftitleAr,
    required this.ltitle,
    required this.ltitleAr,
    required this.totalCount,
    required this.completedCount,
    required this.graphTitle,
    required this.graphTitleAr,
    required this.cColors,
    required this.pColor,
    required this.tileColor,
  });
}

List<HomeGraphModel> homegraphList = [
  HomeGraphModel(
      mTitle: 'Routes',
      mTitleAr: 'المسارات',
      ftitle: "Days Started",
      ftitleAr: "الأيام التي بدأت",
      ltitle: "Days Not Started",
      ltitleAr: "الأيام التي لم تبدأ أبدًا",
      totalCount: 0,
      completedCount: 0,
      graphTitle: 'Active Routes',
      graphTitleAr: 'المسارات النشطة',
      cColors: const Color(0xffefbd3b),
      pColor: const Color(0xffefbd3b).withOpacity(.25),
      tileColor: const LinearGradient(colors: [
        Color(0xffefbd3b),
        Color(0xffd3a11d),
      ])),
  HomeGraphModel(
    mTitle: 'Planned Visits',
    mTitleAr: 'الزيارات المخططة',
    ftitle: "Visited",
    ftitleAr: "تمت الزيارة",
    ltitle: "Pending",
    ltitleAr: "قيد الانتظار",
    graphTitle: 'Planned Visits',
    graphTitleAr: 'الزيارات المخططة',
    totalCount: 0,
    completedCount: 0,
    cColors: const Color(0xff43c2de),
    pColor: const Color(0xff43c2de).withOpacity(.25),
    tileColor: const LinearGradient(
      colors: [Color(0xff3cbadf), Color(0xff3598c7)],
    ),
  ),
  HomeGraphModel(
    mTitle: 'Actual Visits',
    mTitleAr: 'الزيارات الفعلية',
    ftitle: "Planned",
    ftitleAr: "خطة",
    ltitle: "Unplanned",
    ltitleAr: "غير مخطط له",
    graphTitle: 'Actual Visits',
    graphTitleAr: 'الزيارات الفعلية',
    totalCount: 0,
    completedCount: 0,
    cColors: const Color(0xffa143d5),
    pColor: const Color(0xffa143d5).withOpacity(.25),
    tileColor: const LinearGradient(
      colors: [Color(0xffba65f5), Color(0xffa247d8)],
    ),
  ),
  HomeGraphModel(
    mTitle: 'Productive',
    mTitleAr: 'إنتاجي',
    ftitle: "Planned",
    ftitleAr: "خطة",
    ltitle: "Unplanned",
    ltitleAr: "غير مخطط له",
    graphTitle: 'Productive Visits',
    graphTitleAr: 'زيارات منتجة',
    totalCount: 0,
    completedCount: 0,
    cColors: const Color(0xff4cd643),
    pColor: const Color(0xff4cd643).withOpacity(.25),
    tileColor: const LinearGradient(
      colors: [
        Color(0xff4bd944),
        Color(0xff3bb833),
      ],
    ),
  ),
  HomeGraphModel(
    mTitle: 'Non Productive',
    mTitleAr: 'غير منتج',
    ftitle: "Planned",
    ftitleAr: "خطة",
    ltitle: "Unplanned",
    ltitleAr: "غير مخطط له",
    graphTitle: 'Non Productive Visits',
    graphTitleAr: 'زيارات غير منتجة',
    totalCount: 0,
    completedCount: 0,
    cColors: const Color(0xfff13b3b),
    pColor: const Color(0xfff2c8c6),
    tileColor: const LinearGradient(
      colors: [
        Color(0xfffa4e51),
        Color(0xffdf3737),
      ],
    ),
  ),
];

List<Map<String, String>> graphTranslationList = [
  {"Routes": "المسارات"},
  {"Days Started": "الأيام التي بدأت"},
  {"Days Not Started": "الأيام التي لم تبدأ أبدًا"},
  {"Active Routes": "المسارات النشطة"},
  {"Planned Visits": "الزيارات المخططة"},
  {"Visited": "تمت الزيارة"},
  {"Pending": "قيد الانتظار"},
  {"Actual Visits": "الزيارات الفعلية"},
  {"Planned": "خطة"},
  {"Unplanned": "غير مخطط له"},
  {"Productive": "إنتاجي"},
  {"Productive Visits": "زيارات منتجة"},
  {"Non Productive": "غير منتج"},
  {"Non Productive Visits": "زيارات غير منتجة"}
];
