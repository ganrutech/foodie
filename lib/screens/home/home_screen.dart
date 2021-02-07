import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../components/custom_botton_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
