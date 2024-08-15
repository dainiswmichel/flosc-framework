// file: lib/pages/processing_page.dart
// author: Dainis W. Michel https://github.com/dainiswmichel
// Description: This file contains the ProcessingPage widget, where users can input their email to receive their score.
// It demonstrates the use of Supabase Auth UI for email and magic link authentication.

import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:supabase/supabase.dart';
import 'results_page.dart'; // Assuming ResultsPage is defined in results_page.dart

class ProcessingPage extends StatelessWidget {
  const ProcessingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Processing Page'),
      ),
      body: Center(
        child: SupabaseAuthUI(
          // Corrected to SupabaseAuthUI
          onAuthStateChanged: (context, session, error) {
            // Corrected the callback name
            if (session != null) {
              // Added null check for session
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ResultsPage(client: Supabase.instance.client),
                ),
              );
            }
          },
          theme: ThemeData(primarySwatch: Colors.blue),
        ),
      ),
    );
  }
}

// URL1: https://supabase.io/docs/guides/flutter
// URL2: https://pub.dev/packages/supabase_auth_ui
// URL3: https://flutter.dev/docs/cookbook/navigation/navigation-basics
