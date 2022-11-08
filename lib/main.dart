import 'dart:math';

import 'package:cluster/sc2.dart';
import 'package:cluster/simpledashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Dashboard.dart';
import 'gp.dart';
import 'mapscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // showPerformanceOverlay: true,
      // debugShowMaterialGrid: true,
      // showSemanticsDebugger: true,
debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Impact'
      
        // primarySwatch: Colors.blue,
      ),
      // home:  Group2Widget(),
      // home: Dashboard(),
      // home: Dashboard_s(),
      home: TurnByTurn(),

      // home: Group11Widget(),
    );

  }
}

