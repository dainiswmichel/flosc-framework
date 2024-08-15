// file: lib/widgets/submit_and_input_email_widget.dart
// author: Dainis W. Michel https://github.com/dainiswmichel
// Description: This widget provides a form for submitting an email after a challenge has been submitted.

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flosc/pages/results_page.dart';
import 'package:flosc/utils/app_styles.dart'; // Import the app_styles utility

class SubmitAndInputEmail extends StatefulWidget {
  const SubmitAndInputEmail({Key? key}) : super(key: key);

  @override
  SubmitAndInputEmailState createState() => SubmitAndInputEmailState();
}

class SubmitAndInputEmailState extends State<SubmitAndInputEmail> {
  final TextEditingController _emailController = TextEditingController();
  final Logger _logger = Logger('SubmitAndInputEmail');
  bool _isChallengeSubmitted = false;
  bool _isEmailSubmitted = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // Function to handle challenge submission
  void _submitChallenge() {
    setState(() {
      _isChallengeSubmitted = true;
    });
  }

  // Function to handle email submission
  void _submitEmail() {
    if (_isChallengeSubmitted && !_isEmailSubmitted) {
      _logger.info('Email submitted: ${_emailController.text}');
      setState(() {
        _isEmailSubmitted = true;
      });
      // Navigate to the ResultsPage
      Navigator.push(
        context, // Use the context from the build method
        MaterialPageRoute(
          builder: (context) => ResultsPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Padding widget to add space around the Column
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          if (!_isChallengeSubmitted)
            StyledElevatedButton(
              onPressed: _submitChallenge, // Call the _submitChallenge method
              buttonText: 'Submit Challenge',
            ),
          if (_isChallengeSubmitted && !_isEmailSubmitted)
            Column(
              children: [
                centeredText(
                  'Our server is processing your challenge, input your email to receive your score',
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                ),
                StyledElevatedButton(
                  onPressed: _submitEmail, // Call the _submitEmail method
                  buttonText: 'Submit Email',
                ),
              ],
            ),
        ],
      ),
    );
  }
}
