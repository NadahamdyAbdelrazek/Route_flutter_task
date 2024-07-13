import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/home_product/presentation/pages/home_products.dart';

class RoutesName{
static const String home="home";
}
class AppRoutes{
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => ProductsPage(),
        );
      default:
        return MaterialPageRoute(builder: (context) => unDefineRoute(),);
    }
  }
  static Widget unDefineRoute(){
    return Scaffold(
      body: Center(child: Text("Route not Found")),

    );
  }
}