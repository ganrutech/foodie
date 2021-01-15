import 'package:flutter/material.dart';
import 'components/loading_screen.dart';
import 'providers/onboarding.dart';
import 'package:provider/provider.dart';

import 'screens/home/home_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'routes.dart';

import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: OnBoarding()),
      ],
      child: Consumer<OnBoarding>(
        builder: (context, intro, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foodie',
          theme: theme(),
          home: intro.isVisited
              ? HomeScreen()
              : FutureBuilder(
                  future: intro.isOnboarded(),
                  builder: (context, onboardSnapshot) {
                    if (onboardSnapshot.connectionState ==
                        ConnectionState.waiting) {
                      return LoadingScreen();
                    } else {
                      return SplashScreen();
                    }
                  },
                ),
          routes: routes,
        ),
      ),
    );
  }
}
