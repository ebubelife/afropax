import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';

class EmployerWelcomePageScreen extends StatelessWidget {
  const EmployerWelcomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Spacer(),
                  Center(
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCba516f14b44479x242,
                        height: 79.v,
                        width: 242.h),
                  ),
                  Spacer(),
                  SizedBox(height: 66.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 36.h, vertical: 76.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL43),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomElevatedButton(
                            height: 51.v,
                            text: "Create an Account",
                            buttonStyle:
                                CustomButtonStyles.fillPrimaryContainer,
                            buttonTextStyle: CustomTextStyles
                                .titleMediumOpenSansOnPrimaryContainer,
                            onPressed: () {
                              onTapCreateAnAccount(context);
                            }),
                        SizedBox(height: 18.v),
                        CustomElevatedButton(
                            height: 51.v,
                            text: "Login",
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: CustomTextStyles
                                .titleMediumOpenSansOnPrimaryContainerSemiBold,
                            onPressed: () {
                              onTapLogin(context);
                            }),
                        SizedBox(height: 18.v)
                      ]))
                ]))));
  }

  /// Navigates to the employerRegisterPageScreen when the action is triggered.
  onTapCreateAnAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.employerRegisterPageScreen);
  }

  /// Navigates to the employerLoginPageScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.employerLoginPageScreen);
  }
}
