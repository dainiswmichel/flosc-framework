// file: lib/pages/learn_page.dart

import 'package:flutter/material.dart';
import 'widgets/member_intro_video_widget.dart';
import 'widgets/member_navigation_widget.dart';
import 'widgets/member_syllabus_widget.dart'; // updated import statement

class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MemberIntroVideo(),
            MemberNavigation(),
            MemberSyllabus(), // updated class name
          ],
        ),
      ),
    );
  }
}
