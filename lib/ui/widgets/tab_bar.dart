import 'dart:collection';

import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key,required this.tabController,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TabBar(
        controller:tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.food_bank),
            text: 'Food Icons',
          ),
          Tab(
            icon: Icon(Icons.fork_right_rounded),
            text: 'Food ',
          ),
      ],),
    );
  }
}