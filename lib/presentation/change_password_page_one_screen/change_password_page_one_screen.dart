import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_iconbutton_two.dart';import 'package:oga_artisan/widgets/app_bar/appbar_subtitle_two.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ChangePasswordPageOneScreen extends StatelessWidget {ChangePasswordPageOneScreen({Key? key}) : super(key: key);

TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 45.v), child: Column(children: [Container(height: 227.adaptSize, width: 227.adaptSize, padding: EdgeInsets.all(39.h), decoration: AppDecoration.fillPrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder113), child: CustomImageView(imagePath: ImageConstant.imgFlatColorIconsLock, height: 149.adaptSize, width: 149.adaptSize, alignment: Alignment.center)), SizedBox(height: 32.v), Container(width: 327.h, margin: EdgeInsets.only(left: 27.h, right: 28.h), child: Text("Your New Password Must be Different\nfrom Previously Used Password", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumBluegray40018)), SizedBox(height: 50.v), Align(alignment: Alignment.centerLeft, child: Text("New Password", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 15.v), CustomTextFormField(controller: newpasswordController, hintText: "Racoon@1234432134568", hintStyle: CustomTextStyles.titleMediumSemiBold_1, borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer, filled: false), SizedBox(height: 28.v), Align(alignment: Alignment.centerLeft, child: Text("Confirm Password", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 11.v), CustomTextFormField(controller: confirmpasswordController, hintText: "*********************", hintStyle: CustomTextStyles.titleMediumSemiBold_1, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer, filled: false), SizedBox(height: 63.v), CustomElevatedButton(height: 58.v, width: 250.h, text: "Save", buttonStyle: CustomButtonStyles.fillPrimaryTL29, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer23, onPressed: () {onTapSave(context);}), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 117.v, leadingWidth: 59.h, leading: AppbarLeadingIconbuttonTwo(imagePath: ImageConstant.imgArrowLeftOnprimarycontainer, margin: EdgeInsets.only(left: 11.h, top: 58.v, bottom: 11.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Change Password", margin: EdgeInsets.only(top: 70.v, bottom: 19.v)), styleType: Style.bgFill_1); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the settingsPageOneScreen when the action is triggered.
onTapSave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsPageOneScreen); } 
 }
