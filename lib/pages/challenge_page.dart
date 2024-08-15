// file: lib/pages/challenge_page.dart
// author: Dainis W. Michel https://github.com/dainiswmichel
// Description: This file defines the ChallengePage widget, which displays a challenge to the user.
// It demonstrates the use of StatefulWidget, navigation, and passing data between pages.

import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart'; // Import SupabaseClient
import 'widgets/challenge_widget.dart';
import 'widgets/submit_challenge_widget.dart';
import '../utils/app_styles.dart';
import 'processing_page.dart';

class ChallengePage extends StatefulWidget {
  final SupabaseClient client; // Add a field to store the SupabaseClient

  const ChallengePage({Key? key, required this.client})
      : super(key: key); // Update the constructor

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  void _submitChallenge(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ProcessingPage(client: widget.client)), // Pass the client
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenge Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            styledCard(
              child: Center(
                child: Semantics(
                  label: 'Challenge Widget',
                  child: ChallengeWidget(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SubmitChallengeButton(
                onPressed: () => _submitChallenge(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// URL1: https://flutter.dev/docs/cookbook/navigation/navigation-basics
// URL2: https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
// URL3: https://supabase.io/docs/guides/flutter