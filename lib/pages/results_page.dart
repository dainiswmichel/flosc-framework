// Filename: results_page.dart

import 'package:flutter/material.dart';
import 'widgets/results_video_widget.dart';
import 'widgets/results_text_widget.dart';
import 'widgets/one_time_offer_payment_widget.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResultsVideo(),
            ResultsText(),
            OneTimeOfferPayment(),
          ],
        ),
      ),
    );
  }
}
