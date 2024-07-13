import 'package:dartz/dartz.dart';
import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/features/home_product/data/models/ProductModel.dart';
import 'package:flutter_task/features/home_product/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/home_ds.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo{
  HomeDs homeDs;

  HomeRepoImpl(this.homeDs);

  @override
  Future<Either<Failures, ProductModel>> getProducts()async {
    try{
      var result= await homeDs.getProducts();
      return Right(result);

    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }


  }

}