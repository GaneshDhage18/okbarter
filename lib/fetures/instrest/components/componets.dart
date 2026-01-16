import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ok_barter/core/const/colours.dart';
import 'package:ok_barter/core/const/fonts.dart';
import 'package:ok_barter/core/extensions/sizedbox_extension.dart';

class SelectableChip extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableChip({
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        onTap: onTap,
        child: Container(
          constraints: BoxConstraints(minWidth: 111.w, minHeight: 42.h),
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: isSelected
                ? Colours.primary.withOpacity(0.15)
                : Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: isSelected
                  ? Colours.primary
                  : Colours.blue7BD3FC.withOpacity(0.25),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20.sp,
                color: isSelected ? Colours.primary : Colours.black6C6C6A,
              ),
              8.widthBox,
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colours.primary : Colours.black424242,
                  fontSize: 14.sp,
                  fontFamily: Fonts.sRegular,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
