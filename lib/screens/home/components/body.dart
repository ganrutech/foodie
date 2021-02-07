import 'package:flutter/material.dart';

import '../../../components/container_title.dart';

import 'best_restaurants.dart';
import 'categories_list.dart';
import 'custom_appbar.dart';
import 'search_filter.dart';
import 'welcome_widget.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              CustomAppBar(),
              WelcomeWidget(),
              SearchAndFilter(),
              ContainerTitle(title: 'Discover'),
              CategoriesList(),
              ContainerTitle(title: 'Best Restaurant'),
              SizedBox(height: 15),
              BestRestaurant(),
              Container(
                height: 100,
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
