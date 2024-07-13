import 'package:flutter_task/core/api/end_points.dart';
import 'package:flutter_task/features/home_product/data/data_sources/home_ds.dart';
import 'package:flutter_task/features/home_product/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api_manager.dart';

@Injectable(as: HomeDs)
class HomeDsImpl implements HomeDs{
  ApiManager apiManager;
  HomeDsImpl(this.apiManager);
  @override
  Future<ProductModel> getProducts() async{
      var response = await apiManager.getData(endpoint: EndPoints.Products);
      ProductModel productModel = ProductModel.fromJson(response.data);
      return productModel;


  }


}