import 'package:eats/ui/widgets/my_sliver_appbar.dart';
import 'package:flutter/material.dart';

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
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
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
        body: TabBarView(
          controller: tabController,
          children: [
          ListView.builder(itemCount:5,itemBuilder:  (context,index){return ListTile(title: Text('Food Icons $index'),);}),
          ListView.builder(itemCount:5,itemBuilder: (context,index){return ListTile(title: Text('Foodsss Icons $index'),);}),
        ])
      ),
    );
  }
}
