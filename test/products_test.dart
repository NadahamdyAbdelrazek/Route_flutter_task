import 'package:dio/dio.dart';
import 'package:flutter_task/core/api/api_manager.dart';
import 'package:flutter_task/core/api/end_points.dart';
import 'package:flutter_task/core/utils/constants.dart';
import 'package:flutter_task/features/home_product/data/data_sources/home_ds_impl.dart';
import 'package:flutter_task/features/home_product/data/models/ProductModel.dart';
import 'package:test/test.dart';

void main() {
  group('HomeDsImpl Tests', () {
    late HomeDsImpl homeDsImpl;
    late ApiManager apiManager;

    setUp(() {
      apiManager = ApiManager();
      homeDsImpl = HomeDsImpl(apiManager);
    });

    test('getProducts returns ProductModel', () async {
      final result = await homeDsImpl.getProducts();
      expect(result, isA<ProductModel>());
    });
    test('getData success test', () async {
      final response = await apiManager.getData(endpoint: EndPoints.Products);
    });
  });
}
