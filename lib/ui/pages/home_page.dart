import 'package:eats/controller/models/food_models.dart';
import 'package:eats/controller/models/restaurants_model.dart';
import 'package:eats/ui/widgets/my_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          itemCount: categoryMenu.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(categoryMenu[index].name),
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScroller) => [
        MySliverAppbar(
          title: MyTabBar(
            tabController: tabController,
          ),
          child: const Icon(Icons.food_bank),
        )
      ],
      body: Consumer<RestaurantsModel>(
        builder: (context, restaurant, child) => TabBarView(
            controller: tabController,
            children: getFoodInThisCategory(restaurant.menu)),
      ),
    ));
  }
}
