import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ok_barter/core/const/colours.dart';
import 'package:ok_barter/core/const/fonts.dart';
import 'package:ok_barter/core/extensions/sizedbox_extension.dart';
import 'package:ok_barter/fetures/auth/bloc/auth_bloc.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.heightBox,

                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                ),

                22.heightBox,

                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontFamily: Fonts.sBold,
                    color: const Color(0xff424242),
                  ),
                ),

                22.heightBox,

                Text(
                  "Welcome! 👋",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: Fonts.sMedium,
                    color: Colours.textGrey,
                  ),
                ),

                12.heightBox,

                Text(
                  "Please create an account below",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: Fonts.sMedium,
                    color: Colours.textGrey,
                  ),
                ),

                39.heightBox,

                /// NAME
                CustomTextField(
                  controller: nameController,
                  label: "Name",
                  hintText: "Enter your name",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colours.primary,
                    size: 20.w,
                  ),
                ),

                16.heightBox,

                /// EMAIL
                CustomTextField(
                  controller: emailController,
                  label: "Email",
                  hintText: "Enter your email",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colours.primary,
                    size: 20.w,
                  ),
                ),

                16.heightBox,

                /// PASSWORD (BLOC)
                BlocBuilder<AuthBloc, AuthState>(
                  buildWhen: (previous, current) =>
                      current is PasswordVisibilytyState,
                  builder: (context, state) {
                    final isObsecure = state is PasswordVisibilytyState
                        ? state.obsecure
                        : true;

                    return CustomTextField(
                      controller: passwordController,
                      label: "Password",
                      hintText: "Enter your password",
                      isObscure: isObsecure, // ✅ YOU MISSED THIS
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colours.primary,
                        size: 20.w,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(
                            TogglePasswordVisibiltyEvent(),
                          );
                        },
                        icon: Icon(
                          isObsecure ? Icons.visibility_off : Icons.visibility,
                          color: Colours.primary,
                          size: 20.w,
                        ),
                      ),
                    );
                  },
                ),
                34.heightBox,
                SizedBox(
                  width: double.infinity,
                  height: 58.h,

                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16.r),
                      ),

                      backgroundColor: Colours.primary,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: Fonts.sBold,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                29.heightBox,

                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colours.appGrey.withOpacity(0.20)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        "or",
                        style: TextStyle(
                          fontFamily: Fonts.sBold,
                          fontSize: 18.sp,
                          color: Colours.appGrey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Colours.appGrey.withOpacity(0.20)),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontFamily: Fonts.sRegular,
                        fontSize: 14.sp,
                        color: Color(0xff9E9E9E),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontFamily: Fonts.sSemiBold,
                          fontSize: 14.sp,
                          color: Color(0xff476AB0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.isObscure = false,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController controller;
  final String label;
  final String hintText;
  final bool isObscure;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontFamily: Fonts.sBold, fontSize: 16.sp),
        ),
        12.heightBox,
        TextField(
          controller: controller,
          obscureText: isObscure,
          obscuringCharacter: '*',
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(fontFamily: Fonts.sMedium, fontSize: 14.sp),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: _border(),
            focusedBorder: _border(),
            enabledBorder: _border(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: BorderSide(color: Colours.primary),
    );
  }
}
