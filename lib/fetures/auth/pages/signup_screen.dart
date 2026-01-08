import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ok_barter/core/const/colours.dart';
import 'package:ok_barter/core/const/fonts.dart';
import 'package:ok_barter/core/extensions/sizedbox_extension.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            67.heightBox,
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            22.heightBox,
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 28.sp,
                fontFamily: Fonts.sBold,
                color: Color(0xff424242),
              ),
            ),
            22.heightBox,
            Text(
              "Welcome !   👋",
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: Fonts.sMedium,
                color: Colours.textGrey,
              ),
            ),
            22.heightBox,
            Text(
              "Please create an account below",
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: Fonts.sMedium,
                color: Colours.textGrey,
              ),
            ),
            39.heightBox,

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                    fontFamily: Fonts.sBold,
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
                16.heightBox,
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(
                      fontFamily: Fonts.sSemiBold,
                      fontSize: 14.sp,
                    ),
                    prefixIcon: Icon(Icons.person, color: Colours.primary),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(color: Colours.primary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(color: Colours.primary),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(color: Colours.primary),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
