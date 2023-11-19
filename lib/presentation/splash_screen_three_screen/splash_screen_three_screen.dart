import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key})
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Container(
                height: 61.adaptSize,
                width: 61.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      theme.colorScheme.primary,
                      appTheme.deepOrange900A8,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
