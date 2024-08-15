// file: lib/main.dart
// author: Dainis W. Michel https://github.com/dainiswmichel
// Initializes the Flutter application with Supabase integration.

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:supabase/supabase.dart';
import 'utils/app_styles.dart';
import 'pages/challenge_page.dart';
import 'pages/processing_page.dart';
import 'pages/results_page.dart';
import 'pages/learn_page.dart';

final logger = Logger('Main');

void main() {
  final client = SupabaseClient(
    'https://rputallfwlwkugxmqryj.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJwdXRhbGxmd2x3a3VneG1xcnlqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTM3ODIwNjEsImV4cCI6MjAyOTM1ODA2MX0.WOaUa9TsLsvykjyd3b6--0B8DvXywcYoi_8lJ4JL5CI',
  );

  logger.info('App started');
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final SupabaseClient client;

  const MyApp({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLOSC wireFrame',
      theme: ThemeData(
        primaryColor: AppStyles.primaryColor,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: AppStyles.secondaryColor,
              onSecondary: Colors.white,
            ),
        buttonTheme: ButtonThemeData(
          buttonColor: AppStyles.primaryColor,
          textTheme: ButtonTextTheme.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        ),
        textTheme: const TextTheme(
          displayLarge:
              AppStyles.displayLarge, // Updated to recommended replacement
          titleLarge:
              AppStyles.titleLarge, // Updated to recommended replacement
          bodyMedium:
              AppStyles.bodyMedium, // Updated to recommended replacement
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppStyles.primaryColor,
          centerTitle: true,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ChallengePage(),
        '/processing': (context) => ProcessingPage(client: client),
        '/results': (context) => ResultsPage(
            client: client), // Ensure ResultsPage accepts client if needed
        '/learn': (context) => const LearnPage(),
      },
    );
  }
}
// URL1: https://flutter.dev/docs
// URL2: https://dart.dev/guides
// URL3: https://pub.dev/packages