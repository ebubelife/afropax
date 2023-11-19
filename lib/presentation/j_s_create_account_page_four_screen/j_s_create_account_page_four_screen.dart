import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_checkbox_button.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_outlined_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class JSCreateAccountPageFourScreen extends StatelessWidget {JSCreateAccountPageFourScreen({Key? key}) : super(key: key);

TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController addressController1 = TextEditingController();

bool byClickingCONTINUEyouagreetoou = false;

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 76.v), Expanded(child: SingleChildScrollView(child: Column(children: [Container(width: 305.h, margin: EdgeInsets.only(left: 60.h, right: 64.h), child: Text("Create your free profile and let the jobs find you", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumOnPrimaryContainer)), SizedBox(height: 17.v), SizedBox(height: 10.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 6, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.31), dotHeight: 10.v, dotWidth: 10.h))), SizedBox(height: 21.v), Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 21.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 38.v), Text("Add Guarantor", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 10.v), Text("Add your guarantor details", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 29.v), Text("Name", style: CustomTextStyles.titleSmallBluegray400), SizedBox(height: 4.v), _buildName(context), SizedBox(height: 24.v), Text("Email", style: CustomTextStyles.titleSmallBluegray400), SizedBox(height: 4.v), _buildEmail(context), SizedBox(height: 30.v), Text("Residential Address", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 26.v), _buildAddress1(context), SizedBox(height: 26.v), _buildAddress2(context), SizedBox(height: 39.v), _buildByClickingCONTINUEyouagreetoou(context), SizedBox(height: 18.v), _buildSubmit(context), SizedBox(height: 16.v), _buildBack(context), SizedBox(height: 15.v), Align(alignment: Alignment.center, child: Text("Already Registered? Log In Now", style: CustomTextStyles.bodySmallPrimary))]))])))]))))); } 
/// Section Widget
Widget _buildName(BuildContext context) { return CustomTextFormField(controller: nameController, hintText: "Name", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "Email", hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.emailAddress); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return CustomTextFormField(width: 380.h, controller: addressController, hintText: "Enter Address", hintStyle: theme.textTheme.bodyMedium!, alignment: Alignment.topCenter); } 
/// Section Widget
Widget _buildAddress1(BuildContext context) { return SizedBox(height: 63.v, width: 380.h, child: Stack(alignment: Alignment.bottomLeft, children: [_buildAddress(context), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Residential Address", style: CustomTextStyles.titleMediumBluegray400SemiBold)))])); } 
/// Section Widget
Widget _buildAddress2(BuildContext context) { return CustomTextFormField(controller: addressController1, hintText: "Enter Address", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildByClickingCONTINUEyouagreetoou(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 70.h), child: CustomCheckboxButton(text: "By Clicking CONTINUE you agree to our Terms & Condititions", value: byClickingCONTINUEyouagreetoou, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodySmallBlack900, onChange: (value) {byClickingCONTINUEyouagreetoou = value;})); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(height: 39.v, width: 90.h, text: "Submit", buttonStyle: CustomButtonStyles.fillPrimaryTL11, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer20, onPressed: () {onTapSubmit(context);}, alignment: Alignment.centerRight); } 
/// Section Widget
Widget _buildBack(BuildContext context) { return CustomOutlinedButton(width: 90.h, text: "Back", buttonStyle: CustomButtonStyles.outlinePrimaryTL11, onPressed: () {onTapBack(context);}, alignment: Alignment.centerRight); } 
/// Navigates to the jSLoginPageScreen when the action is triggered.
onTapSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSLoginPageScreen); } 
/// Navigates to the jSCreateAccountPageOneScreen when the action is triggered.
onTapBack(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageOneScreen); } 
 }
