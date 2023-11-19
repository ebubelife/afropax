import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_radio_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class JobPostsPage2Bottomsheet extends StatelessWidget {JobPostsPage2Bottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

TextEditingController emailController = TextEditingController();

String radioGroup1 = "";

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 9.v, width: 72.h, decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(4.h)))), SizedBox(height: 21.v), Container(width: 315.h, margin: EdgeInsets.only(right: 67.h), child: Text("How would you like to receive your\napplicants?*", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumOnPrimaryContainer19)), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 1.h), child: CustomRadioButton(text: "Email (recommended)", value: "Email (recommended)", groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;})), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 1.h), child: CustomTextFormField(controller: emailController, hintText: "davidmotilayo2020@gmail.com", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v))), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 1.h), child: CustomRadioButton(text: "SMS", value: "SMS", groupValue: radioGroup1, padding: EdgeInsets.symmetric(vertical: 2.v), onChange: (value) {radioGroup1 = value;})), SizedBox(height: 35.v), CustomElevatedButton(height: 42.v, text: "Save", margin: EdgeInsets.only(left: 1.h), buttonStyle: CustomButtonStyles.fillPrimaryTL20, buttonTextStyle: CustomTextStyles.titleLargeOnPrimary, onPressed: () {onTapSave(context);}), SizedBox(height: 5.v)])); } 
/// Navigates to the jobPostsPage2TwoScreen when the action is triggered.
onTapSave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jobPostsPage2TwoScreen); } 
 }
