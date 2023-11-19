import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 99.h),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgCba516f14b444,
                height: 90.v,
                width: 200.h,
              ),
            )),
      ),
    );
  }
}
