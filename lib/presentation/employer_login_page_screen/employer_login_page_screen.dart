import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';
import 'package:oga_artisan/widgets/custom_outlined_button.dart';

class EmployerLoginPageScreen extends StatelessWidget {
  const EmployerLoginPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgEmployerLogin),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 36.h, vertical: 59.v),
                    child: Column(children: [
                      SizedBox(height: 14.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgCba516f14b44479x242,
                          height: 79.v,
                          width: 242.h),
                      Spacer(),
                      CustomElevatedButton(
                          height: 51.v,
                          text: "Login as an Employer",
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles
                              .titleLargeOpenSansOnPrimaryContainer,
                          onPressed: () {
                            onTapLoginAsAnEmployer(context);
                          }),
                      SizedBox(height: 18.v),
                      CustomOutlinedButton(
                          height: 51.v,
                          text: "Login as a job seeker",
                          buttonTextStyle: CustomTextStyles
                              .titleLargeOpenSansOnPrimaryContainer,
                          onPressed: () {
                            onTapLoginAsAJobSeeker(context);
                          })
                    ])))));
  }

  /// Navigates to the employerLoginPageOneScreen when the action is triggered.
  onTapLoginAsAnEmployer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.employerLoginPageOneScreen);
  }

  /// Navigates to the jSLoginPageScreen when the action is triggered.
  onTapLoginAsAJobSeeker(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jSLoginPageScreen);
  }
}
