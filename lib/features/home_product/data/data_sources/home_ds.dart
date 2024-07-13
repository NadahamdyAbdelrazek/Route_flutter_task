import '../models/ProductModel.dart';

abstract class HomeDs{
  Future<ProductModel> getProducts();
}