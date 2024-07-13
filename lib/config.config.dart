// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/api_manager.dart' as _i3;
import 'features/home_product/data/data_sources/home_ds.dart' as _i4;
import 'features/home_product/data/data_sources/home_ds_impl.dart' as _i5;
import 'features/home_product/data/repositories/home_repo_impl.dart' as _i7;
import 'features/home_product/domain/repositories/home_repo.dart' as _i6;
import 'features/home_product/domain/use_cases/get_products_usecase.dart'
    as _i8;
import 'features/home_product/presentation/bloc/home_bloc.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.HomeDs>(() => _i5.HomeDsImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.HomeRepo>(() => _i7.HomeRepoImpl(gh<_i4.HomeDs>()));
    gh.factory<_i8.GetProductsUseCase>(
        () => _i8.GetProductsUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i9.HomeBloc>(
        () => _i9.HomeBloc(getProductsUseCase: gh<_i8.GetProductsUseCase>()));
    return this;
  }
}
