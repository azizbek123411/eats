import 'package:eats/controller/models/restaurants_model.dart';
import 'package:eats/ui/pages/auth_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers:[
      ChangeNotifierProvider(create: (context)=>RestaurantsModel()),
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:  LoginPage(),
    );
  }
}