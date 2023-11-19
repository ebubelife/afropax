import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:oga_artisan/presentation/form_transfer_page_one_dialog/form_transfer_page_one_dialog.dart';
// ignore_for_file: must_be_immutable
class FormTransferPageScreen extends StatelessWidget {FormTransferPageScreen({Key? key}) : super(key: key);

TextEditingController selectBankController = TextEditingController();

TextEditingController typeOfPaymentController = TextEditingController();

TextEditingController selectPackageController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController amountController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController locationController = TextEditingController();

TextEditingController editTextController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 38.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 43.v), Container(width: 282.h, margin: EdgeInsets.only(right: 97.h), child: Text("Please complete the form after payment", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumSemiBold18)), SizedBox(height: 25.v), Text("Bank Paid Into", style: CustomTextStyles.titleMediumPrimarySemiBold_1), SizedBox(height: 9.v), _buildSelectBank(context), SizedBox(height: 31.v), Text("Type of Payment", style: CustomTextStyles.titleMediumPrimarySemiBold_1), SizedBox(height: 7.v), _buildTypeOfPayment(context), SizedBox(height: 26.v), Text("Select Package", style: CustomTextStyles.titleMediumPrimarySemiBold_1), SizedBox(height: 7.v), _buildSelectPackage(context), SizedBox(height: 30.v), Row(children: [Text("No of Candidate (s)", style: CustomTextStyles.titleMediumPrimarySemiBold_1), Padding(padding: EdgeInsets.only(left: 50.h), child: Text("Amount", style: CustomTextStyles.titleMediumPrimarySemiBold_1))]), SizedBox(height: 7.v), _buildDate1(context), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(right: 113.h), child: Row(children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Depositor’s Name", style: CustomTextStyles.titleMediumPrimarySemiBold_1)), Padding(padding: EdgeInsets.only(left: 63.h), child: Text("Location", style: CustomTextStyles.titleMediumPrimarySemiBold_1))])), SizedBox(height: 7.v), _buildName1(context), SizedBox(height: 26.v), Text("Teller (optional)", style: CustomTextStyles.titleMediumPrimarySemiBold_1), SizedBox(height: 7.v), _buildEditText(context)])), bottomNavigationBar: _buildSubmit(context))); } 
/// Section Widget
Widget _buildSelectBank(BuildContext context) { return CustomTextFormField(controller: selectBankController, hintText: "Select Bank", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildTypeOfPayment(BuildContext context) { return CustomTextFormField(controller: typeOfPaymentController, hintText: "Type of Payment", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildSelectPackage(BuildContext context) { return CustomTextFormField(controller: selectPackageController, hintText: "Select Package", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildDate(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 10.h), child: CustomTextFormField(controller: dateController))); } 
/// Section Widget
Widget _buildAmount(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: amountController))); } 
/// Section Widget
Widget _buildDate1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildDate(context), _buildAmount(context)]); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 10.h), child: CustomTextFormField(controller: nameController))); } 
/// Section Widget
Widget _buildLocation(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: locationController))); } 
/// Section Widget
Widget _buildName1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildName(context), _buildLocation(context)]); } 
/// Section Widget
Widget _buildEditText(BuildContext context) { return CustomTextFormField(width: 180.h, controller: editTextController, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(height: 50.v, width: 270.h, text: "Submit", margin: EdgeInsets.only(left: 80.h, right: 80.h, bottom: 55.v), buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainerBold18, onPressed: () {onTapSubmit(context);}); } 

/// Displays a dialog with the [FormTransferPageOneDialog] content.
onTapSubmit(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: FormTransferPageOneDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
