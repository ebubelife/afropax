import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

class SplashScreenFourScreen extends StatelessWidget {
  const SplashScreenFourScreen({Key? key})
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
                height: 160.adaptSize,
                width: 160.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    80.h,
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
