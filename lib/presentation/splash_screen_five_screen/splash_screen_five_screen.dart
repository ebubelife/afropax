import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

class SplashScreenFiveScreen extends StatelessWidget {
  const SplashScreenFiveScreen({Key? key})
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
          child: SingleChildScrollView(
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCba516f14b444,
                    height: 90.v,
                    width: 14.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 99.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1,
                    height: 932.v,
                    width: 430.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
