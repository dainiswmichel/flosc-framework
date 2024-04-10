// Filename challenge_page.dart

import 'package:flutter/material.dart';
import 'widgets/challenge_widget.dart';
import 'widgets/submit_and_input_email_widget.dart';

class ChallengePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenge'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChallengeWidget(),
            SubmitAndInputEmail(),
          ],
        ),
      ),
    );
  }
}
