import 'package:dartz/dartz.dart';
import 'package:flutter_task/features/home_product/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/ProductModel.dart';

@injectable
class GetProductsUseCase{
  HomeRepo repo;
  GetProductsUseCase(this.repo);
  Future<Either<Failures,ProductModel>> call()=>repo.getProducts();
}