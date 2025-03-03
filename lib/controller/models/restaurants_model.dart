import 'package:flutter/material.dart';

import 'food_models.dart';

class RestaurantsModel extends ChangeNotifier{
  final List<Food> _menu = [
    Food(
        descripton: 'Super muper beef meal',
        imagePath: 'assets/images/b1.jpg',
        name: 'Spicy Burger',
        price: 4.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 5.99),
          Addon(name: 'Medium cheese', price: 4.99),
          Addon(name: 'No cheese', price: 3.99),
        ]),
    Food(
        descripton: 'Super muper beef meal',
        imagePath: 'assets/images/b2.jpg',
        name: 'Chicken Burger',
        price: 2.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 3.99),
          Addon(name: 'Medium cheese', price: 2.99),
          Addon(name: 'No cheese', price: 1.99),
        ]),
    Food(
        descripton: 'Super Cheescake',
        imagePath: 'assets/images/ds1.jpg',
        name: 'Spicy Burger',
        price: 5.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 6.99),
          Addon(name: 'Medium cheese', price: 5.99),
          Addon(name: 'No cheese', price: 4.99),
        ]),
    Food(
        descripton: 'Cookie Pookie',
        imagePath: 'assets/images/ds2.jpg',
        name: 'Spicy Burger',
        price: 5.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super ', price: 6.99),
          Addon(name: 'Medium', price: 5.99),
          Addon(name: 'No ', price: 4.99),
        ]),
    Food(
        descripton: 'Fresh Salad',
        imagePath: 'assets/images/s1.jpg',
        name: 'Spicy Burger',
        price: 2.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 6.99),
          Addon(name: 'Medium cheese', price: 5.99),
          Addon(name: 'No cheese', price: 4.99),
        ]),
    Food(
        descripton: 'Potatos',
        imagePath: 'assets/images/s2.jpg',
        name: 'Spicy Burger',
        price: 5.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 6.99),
          Addon(name: 'Medium cheese', price: 5.99),
          Addon(name: 'No cheese', price: 4.99),
        ]),
    Food(
        descripton: 'Soda',
        imagePath: 'assets/images/d1.jpg',
        name: 'Spicy Burger',
        price: 5.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 6.99),
          Addon(name: 'Medium cheese', price: 5.99),
          Addon(name: 'No cheese', price: 4.99),
        ]),
    Food(
        descripton: 'Coke',
        imagePath: 'assets/images/d2.jpg',
        name: 'Spicy Burger',
        price: 5.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 6.99),
          Addon(name: 'Medium cheese', price: 5.99),
          Addon(name: 'No cheese', price: 4.99),
        ]),
    Food(
        descripton: 'Fries',
        imagePath: 'assets/images/sd1.jpg',
        name: 'Spicy Burger',
        price: 5.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 6.99),
          Addon(name: 'Medium cheese', price: 5.99),
          Addon(name: 'No cheese', price: 4.99),
        ]),
    Food(
        descripton: 'Nuggets',
        imagePath: 'assets/images/sd2.jpg',
        name: 'Spicy Burger',
        price: 5.99,
        category: FoodCategory.burger,
        addons: [
          Addon(name: 'Super cheese', price: 6.99),
          Addon(name: 'Medium cheese', price: 5.99),
          Addon(name: 'No cheese', price: 4.99),
        ]),
  ];


List<Food> get menu=>_menu;


}
