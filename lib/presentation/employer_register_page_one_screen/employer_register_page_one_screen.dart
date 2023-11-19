import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:oga_artisan/widgets/app_bar/appbar_title.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_checkbox_button.dart';import 'package:oga_artisan/widgets/custom_drop_down.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EmployerRegisterPageOneScreen extends StatelessWidget {EmployerRegisterPageOneScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController officeTitleController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController nameController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

bool hasReadTermsAndConditions = false;

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: SingleChildScrollView(padding: EdgeInsets.only(top: 28.v), child: Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 59.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Full Name", style: CustomTextStyles.titleMediumSemiBold_1)), SizedBox(height: 8.v), _buildFullName(context), SizedBox(height: 29.v), Align(alignment: Alignment.centerLeft, child: Text("Your Office Title ( eg CEO )", style: CustomTextStyles.titleMediumSemiBold_1)), SizedBox(height: 7.v), _buildOfficeTitle(context), SizedBox(height: 28.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 57.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Phone Number", style: CustomTextStyles.titleMediumSemiBold_1)), Text("Company Name", style: CustomTextStyles.titleMediumSemiBold_1)]))), SizedBox(height: 7.v), _buildPhoneNumber1(context), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Row(children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Country", style: CustomTextStyles.titleMediumSemiBold_1)), Padding(padding: EdgeInsets.only(left: 136.h), child: Text("State", style: CustomTextStyles.titleMediumSemiBold_1))])), SizedBox(height: 8.v), _buildCountry(context), SizedBox(height: 31.v), _buildCity(context), SizedBox(height: 7.v), _buildChooseFile1(context), SizedBox(height: 20.v), _buildHasReadTermsAndConditions(context), SizedBox(height: 33.v), _buildSubmit(context), SizedBox(height: 32.v)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 73.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 1.v, bottom: 1.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Register")); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return CustomTextFormField(controller: fullNameController, hintText: "e.g David Jude", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildOfficeTitle(BuildContext context) { return CustomTextFormField(controller: officeTitleController, hintText: "Your Office Title ( eg CEO )", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 10.h), child: CustomTextFormField(controller: phoneNumberController, hintText: "E.g 90 000 000 00", hintStyle: theme.textTheme.bodyMedium!))); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: nameController, hintText: "Your Company Name", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 18.v)))); } 
/// Section Widget
Widget _buildPhoneNumber1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildPhoneNumber(context), _buildName(context)]); } 
/// Section Widget
Widget _buildCountry(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 10.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 23.v, 14.h, 23.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 4.v, width: 8.h)), hintText: "Nigeria", items: dropdownItemList, onChanged: (value) {}))), Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 23.v, 11.h, 23.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 4.v, width: 8.h)), hintText: "Oyo", items: dropdownItemList1, contentPadding: EdgeInsets.only(left: 13.h, top: 18.v, bottom: 18.v), onChanged: (value) {})))]); } 
/// Section Widget
Widget _buildCity(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("City", style: CustomTextStyles.titleMediumSemiBold_1), Text("Upload Company Logo", style: CustomTextStyles.titleMediumSemiBold_1)])); } 
/// Section Widget
Widget _buildChooseFile(BuildContext context) { return CustomElevatedButton(width: 80.h, text: "Choose File", margin: EdgeInsets.only(bottom: 3.v), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.labelMediumBluegray400); } 
/// Section Widget
Widget _buildChooseFile1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 10.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 26.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 4.v, width: 8.h)), hintText: "Ibadan", items: dropdownItemList2, onChanged: (value) {}))), Expanded(child: Container(margin: EdgeInsets.only(left: 10.h, top: 5.v), padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildChooseFile(context), Padding(padding: EdgeInsets.only(left: 6.h, top: 10.v, bottom: 11.v), child: Text("No file chosen", style: CustomTextStyles.bodySmallPrimaryContainer))])))]); } 
/// Section Widget
Widget _buildHasReadTermsAndConditions(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 69.h), child: CustomCheckboxButton(alignment: Alignment.centerLeft, text: "I have read and agree to the Terms and Conditions", value: hasReadTermsAndConditions, onChange: (value) {hasReadTermsAndConditions = value;}))); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(height: 49.v, text: "Submit", margin: EdgeInsets.symmetric(horizontal: 16.h), buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: CustomTextStyles.titleLargeOpenSansOnPrimaryContainer, onPressed: () {onTapSubmit(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the dashboardPageScreen when the action is triggered.
onTapSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.dashboardPageScreen); } 
 }
