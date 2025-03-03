import 'package:flutter/material.dart';

import '../pages/auth_pages/login_page.dart';

class MySliverAppbar extends StatelessWidget {
  
  final Widget title;
  final Widget child;
  const MySliverAppbar({
    super.key,
   required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_checkout_rounded,
          ),
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.logout_outlined),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0,right: 0,top: 0),
        background: child,
        title: title,
      ),
      expandedHeight: 300,
      collapsedHeight: 120,
      floating: false,
      pinned: false,
      title: const Text('Restaruants'),
   
    );
  }
}
