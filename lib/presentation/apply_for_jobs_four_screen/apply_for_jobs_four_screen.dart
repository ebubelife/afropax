import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';class ApplyForJobsFourScreen extends StatelessWidget {const ApplyForJobsFourScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle115, height: 237.v, width: 430.h, radius: BorderRadius.vertical(bottom: Radius.circular(41.h))), SizedBox(height: 54.v), CustomImageView(imagePath: ImageConstant.imgVectorPrimary132x132, height: 132.adaptSize, width: 132.adaptSize), SizedBox(height: 23.v), Text("Application Sent", style: CustomTextStyles.titleLargePrimaryBold), SizedBox(height: 15.v), Container(width: 347.h, margin: EdgeInsets.symmetric(horizontal: 41.h), child: Text("You will be notified once the employer checks your appliction.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge)), Spacer(flex: 29), CustomElevatedButton(height: 50.v, text: "Back to Home", margin: EdgeInsets.symmetric(horizontal: 25.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold18, onPressed: () {onTapBackToHome(context);}), Spacer(flex: 70)])))); } 
/// Navigates to the dashboardScreen when the action is triggered.
onTapBackToHome(BuildContext context) { Navigator.pushNamed(context, AppRoutes.dashboardScreen); } 
 }
