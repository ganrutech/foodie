import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/onboarding.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home Page'),
              RaisedButton(
                onPressed: () {
                  Provider.of<OnBoarding>(context, listen: false).logout();
                },
                child: Text('Clear Data'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
