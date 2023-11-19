import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_checkbox_button.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:oga_artisan/presentation/payment_page_dialog/payment_page_dialog.dart';
// ignore_for_file: must_be_immutable
class PayWithCardPageScreen extends StatelessWidget {PayWithCardPageScreen({Key? key}) : super(key: key);

TextEditingController pinController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController pinFourController = TextEditingController();

bool useAsDefault = false;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 149.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCreditCard, height: 53.v, width: 71.h), SizedBox(height: 9.v), Text("Please enter your card details", style: CustomTextStyles.bodySmallGilroyMediumGray800b2), SizedBox(height: 87.v), _buildPin(context), SizedBox(height: 27.v), _buildDate1(context), SizedBox(height: 27.v), _buildPinFour(context), SizedBox(height: 10.v), _buildUseAsDefault(context), Spacer(), SizedBox(height: 45.v), _buildMakePayment(context)])))); } 
/// Section Widget
Widget _buildPin(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h, right: 6.h), child: CustomTextFormField(controller: pinController, hintText: "Enter your 6 Digit Pin", hintStyle: CustomTextStyles.titleMediumOpenSansBluegray100, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 16.v, 7.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgEleyeclosePrimary, height: 17.adaptSize, width: 17.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 49.v), contentPadding: EdgeInsets.only(top: 12.v, right: 16.h, bottom: 12.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151)); } 
/// Section Widget
Widget _buildDate(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 11.h), child: CustomTextFormField(controller: dateController, hintText: "Expire Date", hintStyle: CustomTextStyles.titleMediumOpenSansBluegray100, prefix: Container(margin: EdgeInsets.fromLTRB(17.h, 15.v, 6.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgEleyeclosePrimary, height: 17.v, width: 18.h)), prefixConstraints: BoxConstraints(maxHeight: 49.v), contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151))); } 
/// Section Widget
Widget _buildDate1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h, right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildDate(context), Expanded(child: Container(margin: EdgeInsets.only(left: 11.h), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 11.v), decoration: AppDecoration.outlineBlack9003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEleyeclosePrimary, height: 17.v, width: 18.h, margin: EdgeInsets.only(top: 3.v, bottom: 5.v)), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("CW", style: CustomTextStyles.titleMediumOpenSansBluegray100))])))])); } 
/// Section Widget
Widget _buildPinFour(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h, right: 5.h), child: CustomTextFormField(controller: pinFourController, hintText: "Your 4 Digit Pin", hintStyle: CustomTextStyles.titleMediumOpenSansBluegray100, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 16.v, 7.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgEleyeclosePrimary, height: 17.adaptSize, width: 17.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 49.v), contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151)); } 
/// Section Widget
Widget _buildUseAsDefault(BuildContext context) { return Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 6.h), child: CustomCheckboxButton(alignment: Alignment.centerRight, text: "Use as Default", value: useAsDefault, textStyle: CustomTextStyles.bodyMediumGilroyBoldGray400, onChange: (value) {useAsDefault = value;}))); } 
/// Section Widget
Widget _buildMakePayment(BuildContext context) { return CustomElevatedButton(height: 61.v, text: "Make Payment", buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainerBold, onPressed: () {onTapMakePayment(context);}); } 

/// Displays a dialog with the [PaymentPageDialog] content.
onTapMakePayment(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: PaymentPageDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
