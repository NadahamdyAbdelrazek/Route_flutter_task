import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/ProductModel.dart';

abstract class HomeRepo{
  Future<Either<Failures,ProductModel>> getProducts();
}