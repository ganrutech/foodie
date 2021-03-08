import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../components/container_title.dart';

import 'best_foods_near_you.dart';
import 'best_restaurants.dart';
import 'categories_list.dart';
import 'custom_appbar.dart';
import 'featured_container.dart';
import 'popular_foods_container.dart';
import 'search_filter.dart';
import 'top_of_day_container.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              WelcomeWidget(),
              SearchAndFilter(),
              ContainerTitle(title: 'Discover'),
              CategoriesList(),
              // Best Foods Near You
              ContainerTitle(title: 'Best Foods Near You'),
              BestFoodsNearYou(),
              SizedBox(height: kDefaultValue / 2),
              // Top of the day
              ContainerTitle(title: 'Top of the Day'),
              TopOfDayContainer(),
              // Best Restaurants
              ContainerTitle(title: 'Best Restaurants'),
              BestRestaurant(),
              // Popular Foods
              ContainerTitle(title: 'Popular Foods'),
              PopularFoodsContainer(),
              // Featured Items
              ContainerTitle(title: 'Featured Items'),
              FeaturedContainer(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
