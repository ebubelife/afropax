import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
