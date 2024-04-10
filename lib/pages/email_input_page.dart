// file: lib/pages/email_input_page.dart

import 'package:flutter/material.dart';

class EmailInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Input'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'We are working on processing your challenge...input your email to receive your score!',
              style: Theme.of(context).textTheme.headline5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                Navigator.pushNamed(context, '/results');
              },
            ),
          ],
        ),
      ),
    );
  }
}
