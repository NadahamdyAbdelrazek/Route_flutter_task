import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/config/themeing/my_theme.dart';

import '../../../../core/utils/app_colors.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onTap: () {},
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 5.h),
                  hintText: "what do you search for?",
                  hintStyle: MyThemeData.Lighttheme.textTheme.bodySmall,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                      BorderSide(color: AppColors.blueColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                      BorderSide(color: AppColors.blueColor))),
            ),
          ),
          SizedBox(width: 20.w),
          InkWell(
            onTap: () {},
            child: Badge(
              child: Icon(
                size: 33.sp,
                Icons.shopping_cart,
                color: AppColors.BackGround,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
