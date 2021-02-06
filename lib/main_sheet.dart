import 'package:flutter/material.dart';

import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Sheet',
      theme: theme(),
      home: Scaffold(
        body: Center(
          child: Text('Sheet App'),
        ),
      ),
    );
  }
}
