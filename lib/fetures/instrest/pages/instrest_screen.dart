import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ok_barter/core/const/colours.dart';
import 'package:ok_barter/core/const/fonts.dart';
import 'package:ok_barter/core/extensions/sizedbox_extension.dart';
import 'package:ok_barter/core/routes/router.dart';
import 'package:ok_barter/fetures/instrest/List/list.dart';
import 'package:ok_barter/fetures/instrest/bloc/instrest_bloc.dart';
import 'package:ok_barter/fetures/instrest/bloc/instrest_state.dart';
import 'package:ok_barter/fetures/instrest/components/componets.dart';

class InstrestScreen extends StatelessWidget {
  const InstrestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  64.heightBox,
                  Text(
                    "Choose Your \ninterest",
                    style: TextStyle(
                      color: Colours.black212121,
                      fontSize: 32.sp,
                      fontFamily: Fonts.sSemiBold,
                    ),
                  ),

                  /// ---------------- ELECTRONICS ----------------
                  25.heightBox,
                  Text(
                    "Electronics",
                    style: TextStyle(
                      color: Colours.black616161,
                      fontSize: 18.sp,
                      fontFamily: Fonts.sSemiBold,
                    ),
                  ),
                  25.heightBox,

                  BlocBuilder<InstrestBloc, InstrestState>(
                    builder: (context, state) {
                      final selected = state is InstrestSelectionUpdated
                          ? state.selectedCategories
                          : <String>[];

                      return Wrap(
                        spacing: 23.w,
                        runSpacing: 14.h,
                        children: List.generate(electronicNames.length, (
                          index,
                        ) {
                          final category = electronicNames[index];
                          final isSelected = selected.contains(category);

                          return SelectableChip(
                            icon: electronicIcons[index],
                            title: category,
                            isSelected: isSelected,
                            onTap: () {
                              context.read<InstrestBloc>().add(
                                ChooseInstrestEvent(category: category),
                              );
                            },
                          );
                        }),
                      );
                    },
                  ),
                  25.heightBox,
                  Text(
                    "Home Appliances",
                    style: TextStyle(
                      color: Colours.black616161,
                      fontSize: 18.sp,
                      fontFamily: Fonts.sSemiBold,
                    ),
                  ),
                  25.heightBox,

                  BlocBuilder<InstrestBloc, InstrestState>(
                    builder: (context, state) {
                      final selected = state is InstrestSelectionUpdated
                          ? state.selectedCategories
                          : <String>[];

                      return Wrap(
                        spacing: 23.w,
                        runSpacing: 14.h,
                        children: List.generate(homeApplianceIcons.length, (
                          index,
                        ) {
                          final category = homeApplianceNames[index];
                          final isSelected = selected.contains(category);

                          return SelectableChip(
                            icon: homeApplianceIcons[index],
                            title: category,
                            isSelected: isSelected,
                            onTap: () {
                              context.read<InstrestBloc>().add(
                                ChooseInstrestEvent(category: category),
                              );
                            },
                          );
                        }),
                      );
                    },
                  ),

                  /// ---------------- TOYS & GAMES ----------------
                  25.heightBox,
                  Text(
                    "Toys and Games",
                    style: TextStyle(
                      color: Colours.black616161,
                      fontSize: 18.sp,
                      fontFamily: Fonts.sSemiBold,
                    ),
                  ),
                  25.heightBox,

                  BlocBuilder<InstrestBloc, InstrestState>(
                    builder: (context, state) {
                      final selected = state is InstrestSelectionUpdated
                          ? state.selectedCategories
                          : <String>[];

                      return Wrap(
                        spacing: 23.w,
                        runSpacing: 14.h,
                        children: List.generate(gamesAndToysNames.length, (
                          index,
                        ) {
                          final category = gamesAndToysNames[index];
                          final isSelected = selected.contains(category);

                          return SelectableChip(
                            icon: gamesAndToysIcons[index],
                            title: category,
                            isSelected: isSelected,
                            onTap: () {
                              context.read<InstrestBloc>().add(
                                ChooseInstrestEvent(category: category),
                              );
                            },
                          );
                        }),
                      );
                    },
                  ),

                  120.heightBox,
                ],
              ),
            ),
          ),

          /// ---------------- BOTTOM BUTTONS ----------------
          Positioned(
            bottom: 26.h,
            left: 24.w,
            right: 24.w,
            child: Row(
              children: [
                SizedBox(
                  height: 58.h,
                  width: 176.w,
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colours.primary),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                    ),
                    onPressed: () {
                      goRouter.goNamed(Routes.homeScreen.name);
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: Fonts.sBold,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 58.h,
                  width: 176.w,
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(
                        Colors.white,
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colours.primary,
                        fontSize: 16.sp,
                        fontFamily: Fonts.sBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
