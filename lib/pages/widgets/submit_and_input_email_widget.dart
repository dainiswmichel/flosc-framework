// file: lib/widgets/submit_and_input_email_widget.dart

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flosc/pages/results_page.dart';

class SubmitAndInputEmail extends StatefulWidget {
  // ignore: use_super_parameters
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

  void _submitChallenge() {
    setState(() {
      _isChallengeSubmitted = true;
    });
  }

  void _submitEmail() {
    if (_isChallengeSubmitted && !_isEmailSubmitted) {
      _logger.info('Email submitted: ${_emailController.text}');
      setState(() {
        _isEmailSubmitted = true;
      });
      // Navigate to the ResultsPage
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!_isChallengeSubmitted)
          ElevatedButton(
            onPressed: _submitChallenge,
            child: const Text('Submit Challenge'),
          ),
        if (_isChallengeSubmitted && !_isEmailSubmitted)
          Column(
            children: [
              const Text(
                'Our server is processing your challenge, input your email to receive your score',
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
              ),
              ElevatedButton(
                onPressed: _submitEmail,
                child: const Text('Submit Email'),
              ),
            ],
          ),
      ],
    );
  }
}
