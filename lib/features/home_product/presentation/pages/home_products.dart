import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/features/home_product/presentation/bloc/home_bloc.dart';
import 'package:flutter_task/features/home_product/presentation/widgets/search_item.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../config.dart';
import '../../../../core/components/reuseable_components.dart';
import '../../../../core/enums/screen_status.dart';
import '../../data/models/ProductModel.dart';
import '../widgets/product_item.dart';

class ProductsPage extends StatelessWidget {

   ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    
        return BlocProvider(
          create: (context) => getIt<HomeBloc>()..add(GetProductsEvent()),
          child: BlocConsumer<HomeBloc,HomeState>(
          listener:(context, state) {
          setLoading(context, state.getProductsStatus==RequestStatus.loading);
          },
            builder:(context, state) {
              return LoaderOverlay(
                child: Scaffold(
                  appBar: AppBar(leadingWidth: 50.w,),
                  body: Column(
                    children:[
                      SearchItem(),
                      SizedBox(height: 16.h),
                      Expanded(
                        child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: (192 / 250),
                          crossAxisCount: 2,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.w,
                        ),
                        itemBuilder: (context, index) {
                          return ProductItem(
                            productModel: state.productModel, index: index,);
                        },
                        itemCount: state.productModel?.products?.length,
                                            ),
                      ),
              ]
                  ),
                ),
              );
            }
          ),
        );

      }

    }


