import 'package:bloc/bloc.dart';
import 'package:flutter_task/core/enums/screen_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/ProductModel.dart';
import '../../domain/use_cases/get_products_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetProductsUseCase getProductsUseCase;

  HomeBloc({required this.getProductsUseCase}) : super(const HomeState()) {
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsStatus: RequestStatus.loading));
      var result = await getProductsUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getProductsStatus: RequestStatus.failure, productFailure: l));
      }, (r) {
        emit(state.copyWith(
            getProductsStatus: RequestStatus.success, productModel: r));
      });
    });
  }
}
