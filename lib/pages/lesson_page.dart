// file: lib/pages/lesson_page.dart

import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Lesson Content',
              style: Theme.of(context).textTheme.headline5,
            ),
            // Add your video widget here
          ],
        ),
      ),
    );
  }
}
