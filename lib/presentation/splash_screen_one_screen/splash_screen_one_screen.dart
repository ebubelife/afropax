import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

class SplashScreenOneScreen extends StatelessWidget {
  const SplashScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.imgCba516f14b444,
            height: 90.v,
            width: 231.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
