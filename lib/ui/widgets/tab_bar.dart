
import 'package:eats/controller/models/food_models.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key,required this.tabController,});


List <Tab> _buildCategoryTabs(){
  return FoodCategory.values.map((category){
    return Tab(text: category.toString().split('.').last,);
  }).toList();
} 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TabBar(
        controller:tabController,
        tabs: 
       _buildCategoryTabs(),
      ),
    );
  }
}