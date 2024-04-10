// file: lib/main.dart

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'pages/challenge_page.dart';
import 'pages/results_page.dart';
import 'pages/learn_page.dart';
import 'pages/unknown_route_page.dart'; // Make sure to create this page

void main() {
  // Set up logging
  Logger.root.level = Level.INFO; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLOSC wireFrame',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ChallengePage(),
        '/results': (context) => ResultsPage(),
        '/learn': (context) => LearnPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => UnknownRoutePage());
      },
    );
  }
}
