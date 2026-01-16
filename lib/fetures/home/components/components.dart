import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ok_barter/core/const/colours.dart';
import 'package:ok_barter/core/const/fonts.dart';

Widget customTextField({required String hintText, VoidCallback? onTap}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(10.r),
    child: Container(
      height: 50.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colours.primary.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colours.primary.withOpacity(0.9),
            size: 22.sp,
          ),
          SizedBox(width: 8.w),
          Text(
            hintText,
            style: TextStyle(
              color: Colours.primary,
              fontFamily: Fonts.sRegular,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget sectionHeader({title, subtitle, ontap}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colours.black222222,
            fontFamily: Fonts.sSemiBold,
            fontSize: 18.sp,
          ),
        ),
        TextButton(
          onPressed: ontap,
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colours.blue66B9DF,
              fontFamily: Fonts.sRegular,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    ),
  );
}
