import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ok_barter/core/routes/router.dart';

void main() {
  runApp(const OkBarter());
}

class OkBarter extends StatelessWidget {
  const OkBarter({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: Size(300, 200),
      child: MaterialApp.router(routerConfig: goRouter,
      
      
      ),
    );
  }
}
