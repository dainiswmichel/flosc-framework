// file: lib/pages/unknown_route_page.dart

import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Not Found'),
      ),
      body: Center(
        child: Text(
          'The page you are looking for does not exist.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
