
enum FoodCategory{

  burger,
  salads,
  sides,
  deserts,
  drinks,
}




class Addon{
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}


class Food{
  final String name;
  final String descripton;
  final String imagePath;
  final double price;
  final FoodCategory category;
  final List<Addon> addons;

  Food({
    required this.descripton,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.category,
    required this.addons,
  });




}