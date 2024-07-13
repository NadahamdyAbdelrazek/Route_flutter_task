

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/config/themeing/my_theme.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/models/ProductModel.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final ProductModel? productModel;

  ProductItem({required this.index, required this.productModel, super.key});

  @override
  Widget build(BuildContext context) {
   var product = productModel?.products?[index];
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
            left: index.isEven ? 16.w : 0, right: index.isOdd ? 16.w : 0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(width: 2.w, color: Colors.blueGrey)),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r)),
                      child: CachedNetworkImage(
                        imageUrl: product?.images?.first ?? "",
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 200.h,
                        errorWidget: (context, url, error) => Icon(
                          Icons.error_outline,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0.h, horizontal: 7.w),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(2.h.w),
                          margin: EdgeInsets.only(left: 6.w),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Icon(
                            Icons.favorite_outline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      product?.title ?? "",
                      style: MyThemeData.Lighttheme.textTheme.bodyLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      product?.description ?? "",
                      style: MyThemeData.Lighttheme.textTheme.bodyLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h, left: 2.w),
                    child: Row(
                      children: [
                        Text("EGP ${product?.price.toString() ?? ""} ",
                            style: MyThemeData.Lighttheme.textTheme.bodyLarge,),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Text("1200 EGp",
                              style: MyThemeData.Lighttheme.textTheme.bodyMedium
    )
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w, bottom: 13.h),
                    child: Row(
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(color: AppColors.blueColor),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(product?.rating.toString() ?? "",
                            style: MyThemeData.Lighttheme.textTheme.bodyLarge),
                        SizedBox(
                          width: 4.w,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellowColor,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                          },
                          child: Container(
                            padding: EdgeInsets.all(2.w.h),
                            margin: EdgeInsets.only(
                              right: 5.w,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.BackGround,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}