import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_outlined_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class JSCreateAccountPageOneScreen extends StatelessWidget {JSCreateAccountPageOneScreen({Key? key}) : super(key: key);

TextEditingController editTextController = TextEditingController();

TextEditingController skillOneController = TextEditingController();

TextEditingController statementController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 76.v), Expanded(child: SingleChildScrollView(child: Column(children: [Container(width: 305.h, margin: EdgeInsets.only(left: 60.h, right: 64.h), child: Text("Create your free profile and let the jobs find you", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumOnPrimaryContainer)), SizedBox(height: 17.v), SizedBox(height: 10.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 6, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.31), dotHeight: 10.v, dotWidth: 10.h))), SizedBox(height: 21.v), Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 21.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 42.v), _buildSelectJobCategory(context), SizedBox(height: 7.v), _buildSelectJobCategory2(context), SizedBox(height: 24.v), Text("Select a Skill", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 9.v), _buildSkillOne(context), SizedBox(height: 26.v), Text("Describe what you can do", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 7.v), _buildStatement(context), SizedBox(height: 26.v), Text("Upload CV (optional)", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 7.v), _buildThirtyNine(context), SizedBox(height: 65.v), _buildNext(context), SizedBox(height: 16.v), _buildBack(context), SizedBox(height: 15.v), Align(alignment: Alignment.center, child: Text("Already Registered? Log In Now", style: CustomTextStyles.bodySmallPrimary))]))])))])))); } 
/// Section Widget
Widget _buildSelectJobCategory(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 26.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Select Job Category", style: CustomTextStyles.titleMediumBluegray400SemiBold), Text("Years of Experience", style: CustomTextStyles.titleMediumBluegray400SemiBold)])); } 
/// Section Widget
Widget _buildSelectJobCategory1(BuildContext context) { return Expanded(child: CustomElevatedButton(height: 54.v, text: "Select Job Category", margin: EdgeInsets.only(right: 10.h), buttonStyle: CustomButtonStyles.outlineBlackTL7, buttonTextStyle: theme.textTheme.bodyMedium!)); } 
/// Section Widget
Widget _buildEditText(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: editTextController))); } 
/// Section Widget
Widget _buildSelectJobCategory2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSelectJobCategory1(context), _buildEditText(context)]); } 
/// Section Widget
Widget _buildSkillOne(BuildContext context) { return CustomTextFormField(controller: skillOneController, hintText: "Select a Skill", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildStatement(BuildContext context) { return CustomTextFormField(controller: statementController, hintText: "I can do...", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, maxLines: 7); } 
/// Section Widget
Widget _buildChooseFile(BuildContext context) { return CustomElevatedButton(width: 115.h, text: "Choose File", margin: EdgeInsets.only(bottom: 8.v), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleMediumBluegray400); } 
/// Section Widget
Widget _buildThirtyNine(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildChooseFile(context), Padding(padding: EdgeInsets.only(left: 13.h, top: 7.v, bottom: 17.v), child: Text("No file chosen", style: theme.textTheme.bodyMedium))])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 39.v, width: 90.h, text: "Next", buttonStyle: CustomButtonStyles.fillPrimaryTL11, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer20, onPressed: () {onTapNext(context);}, alignment: Alignment.centerRight); } 
/// Section Widget
Widget _buildBack(BuildContext context) { return CustomOutlinedButton(width: 90.h, text: "Back", buttonStyle: CustomButtonStyles.outlinePrimaryTL11, onPressed: () {onTapBack(context);}, alignment: Alignment.centerRight); } 
/// Navigates to the jSCreateAccountPageFourScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageFourScreen); } 
/// Navigates to the jSCreateAccountPageFiveScreen when the action is triggered.
onTapBack(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageFiveScreen); } 
 }
