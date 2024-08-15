// file: lib/pages/widgets/submit_challenge_widget.dart
// author: Dainis W. Michel https://github.com/dainiswmichel
// Description: This widget provides a styled button for submitting a challenge.

import 'package:flutter/material.dart';
import 'package:flosc/utils/app_styles.dart'; // Import the app_styles utility

class SubmitChallengeButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SubmitChallengeButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledElevatedButton(
      onPressed: onPressed,
      buttonText: 'Submit Challenge',
    );
  }
}
