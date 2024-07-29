import 'package:flutter/material.dart';

class HomeGraphModel {
  final String mTitle;
  final String ftitle;
  final String ltitle;
  final String graphTitle;
  final int totalCount;
  final int completedCount;
  final Color cColors;
  final Color pColor;
  final Gradient tileColor;

  HomeGraphModel({
    required this.mTitle,
    required this.ftitle,
    required this.ltitle,
    required this.totalCount,
    required this.completedCount,
    required this.graphTitle,
    required this.cColors,
    required this.pColor,
    required this.tileColor,
  });
}

List<HomeGraphModel> homegraphList = [
  HomeGraphModel(
      mTitle: 'Routes',
      ftitle: "Days Started",
      ltitle: "Days Not Started",
      totalCount: 100,
      completedCount: 60,
      graphTitle: 'Active Routes',
      cColors: const Color(0xffefbd3b),
      pColor: const Color(0xffebe5d6),
      tileColor: const LinearGradient(colors: [
        Color(0xffefbd3b),
        Color(0xffd3a11d),
      ])),
  HomeGraphModel(
    mTitle: 'Planned Visits',
    ftitle: "Visited",
    ltitle: "Pending",
    graphTitle: 'Planned Visits',
    totalCount: 100,
    completedCount: 20,
    cColors: const Color(0xff43c2de),
    pColor: const Color(0xffe2e6e6),
    tileColor: const LinearGradient(
      colors: [Color(0xff3cbadf), Color(0xff3598c7)],
    ),
  ),
  HomeGraphModel(
    mTitle: 'Actual Visits',
    ftitle: "Planned",
    ltitle: "Unplanned",
    graphTitle: 'Actual Visits',
    totalCount: 100,
    completedCount: 28,
    cColors: const Color(0xffa143d5),
    pColor: const Color(0xffe6e0e2),
    tileColor: const LinearGradient(
      colors: [Color(0xffba65f5), Color(0xffa247d8)],
    ),
  ),
  HomeGraphModel(
    mTitle: 'Productive',
    ftitle: "Planned",
    ltitle: "Unplanned",
    graphTitle: 'Productive',
    totalCount: 100,
    completedCount: 64,
    cColors: const Color(0xff4cd643),
    pColor: const Color(0xffebe9e7),
    tileColor: const LinearGradient(
      colors: [
        Color(0xff4bd944),
        Color(
          0xff3bb833,
        ),
      ],
    ),
  ),
  HomeGraphModel(
    mTitle: 'Non Productive',
    ftitle: "Planned",
    ltitle: "Unplanned",
    graphTitle: 'Non Productive Visits',
    totalCount: 100,
    completedCount: 88,
    cColors: const Color(0xfff13b3b),
    pColor: const Color(0xfff2c8c6),
    tileColor: const LinearGradient(
      colors: [
        Color(0xfffa4e51),
        Color(
          0xffdf3737,
        ),
      ],
    ),
  ),
];
