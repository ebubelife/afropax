import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_outlined_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class JSCreateAccountPageThreeScreen extends StatelessWidget {JSCreateAccountPageThreeScreen({Key? key}) : super(key: key);

TextEditingController dateOfBirthController = TextEditingController();

TextEditingController timeController = TextEditingController();

TextEditingController streetaddressController = TextEditingController();

TextEditingController countryController = TextEditingController();

TextEditingController editTextController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 76.v), Expanded(child: SingleChildScrollView(child: Column(children: [Container(width: 305.h, margin: EdgeInsets.only(left: 60.h, right: 64.h), child: Text("Create your free profile and let the jobs find you", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumOnPrimaryContainer)), SizedBox(height: 17.v), SizedBox(height: 10.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 6, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.onPrimaryContainer, dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), dotHeight: 10.v, dotWidth: 10.h))), SizedBox(height: 21.v), Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 21.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 35.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Personal Data", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 56.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Date of Birth", style: CustomTextStyles.titleMediumBluegray400SemiBold)), Text("Select Job Type", style: CustomTextStyles.titleMediumBluegray400SemiBold)])), SizedBox(height: 7.v), _buildDateOfBirth1(context), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Street Address", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 8.v), _buildStreetaddress(context), SizedBox(height: 30.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Country", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 7.v), _buildCountry(context), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("State of Residence", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 9.v), _buildEditText(context), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("City", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 6.v), _buildNext1(context), SizedBox(height: 18.v), _buildBack(context), SizedBox(height: 55.v), Align(alignment: Alignment.center, child: Text("Already Registered? Log In Now", style: CustomTextStyles.bodySmallPrimary))]))])))])))); } 
/// Section Widget
Widget _buildDateOfBirth(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 11.h), child: CustomTextFormField(controller: dateOfBirthController, hintText: "Enter your D.O.B", hintStyle: theme.textTheme.bodyMedium!))); } 
/// Section Widget
Widget _buildTime(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 11.h), child: CustomTextFormField(controller: timeController, hintText: "Contract or Fulltime", hintStyle: theme.textTheme.bodyMedium!))); } 
/// Section Widget
Widget _buildDateOfBirth1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildDateOfBirth(context), _buildTime(context)])); } 
/// Section Widget
Widget _buildStreetaddress(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: CustomTextFormField(controller: streetaddressController, hintText: "Enter your street address", hintStyle: theme.textTheme.bodyMedium!)); } 
/// Section Widget
Widget _buildCountry(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: CustomTextFormField(controller: countryController, hintText: "Algeria", hintStyle: theme.textTheme.bodyMedium!)); } 
/// Section Widget
Widget _buildEditText(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: CustomTextFormField(controller: editTextController, textInputAction: TextInputAction.done)); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 39.v, width: 90.h, text: "Next...", margin: EdgeInsets.only(bottom: 16.v), buttonStyle: CustomButtonStyles.fillPrimaryTL11, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer20, onPressed: () {onTapNext(context);}); } 
/// Section Widget
Widget _buildNext1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 180.h, margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 18.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Text("Eg, Ibadan", style: theme.textTheme.bodyMedium)), _buildNext(context)])); } 
/// Section Widget
Widget _buildBack(BuildContext context) { return CustomOutlinedButton(width: 90.h, text: "Back", margin: EdgeInsets.only(right: 3.h), buttonStyle: CustomButtonStyles.outlinePrimaryTL11, onPressed: () {onTapBack(context);}, alignment: Alignment.centerRight); } 
/// Navigates to the jSCreateAccountPageScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageScreen); } 
/// Navigates to the jSCreateAccountPageTwoScreen when the action is triggered.
onTapBack(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageTwoScreen); } 
 }
