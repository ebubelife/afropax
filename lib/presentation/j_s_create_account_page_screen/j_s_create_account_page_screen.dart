import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_drop_down.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_outlined_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class JSCreateAccountPageScreen extends StatelessWidget {JSCreateAccountPageScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

TextEditingController educationalQualificationFiveController = TextEditingController();

TextEditingController educationalQualificationFiveController1 = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 76.v), Expanded(child: SingleChildScrollView(child: Column(children: [Container(width: 305.h, margin: EdgeInsets.only(left: 60.h, right: 64.h), child: Text("Create your free profile and let the jobs find you", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumOnPrimaryContainer)), SizedBox(height: 17.v), SizedBox(height: 10.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 6, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.31), dotHeight: 10.v, dotWidth: 10.h))), SizedBox(height: 21.v), Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 38.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 18.v), Text("Educational Qualification", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 15.v), Text("Select Highest Educational Qulification", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 7.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 15.v, 21.h, 8.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownPrimary, height: 31.v, width: 24.h)), hintText: "Select Educational Qualification", items: dropdownItemList, onChanged: (value) {}), SizedBox(height: 18.v), Text("Educational Qualification", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 15.v), Text("Select Highest Educational Qulification", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 7.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 21.v, 21.h, 2.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownPrimary, height: 31.v, width: 24.h)), hintText: "Select Educational Qualification", items: dropdownItemList1, onChanged: (value) {}), SizedBox(height: 20.v), Text("Educational Qualification", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 15.v), Text("Select Highest Educational Qulification", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 7.v), _buildEducationalQualificationFive(context), SizedBox(height: 20.v), Text("Educational Qualification", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 15.v), Text("Select Highest Educational Qulification", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 7.v), _buildEducationalQualificationFive1(context), SizedBox(height: 67.v), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [_buildBack(context), _buildNext(context)])), SizedBox(height: 19.v), Align(alignment: Alignment.center, child: Text("Already Registered? Log In Now", style: CustomTextStyles.bodySmallPrimary))]))])))])))); } 
/// Section Widget
Widget _buildEducationalQualificationFive(BuildContext context) { return CustomTextFormField(controller: educationalQualificationFiveController, hintText: "Select Educational Qualification", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildEducationalQualificationFive1(BuildContext context) { return CustomTextFormField(controller: educationalQualificationFiveController1, hintText: "Select Educational Qualification", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildBack(BuildContext context) { return CustomOutlinedButton(width: 90.h, text: "Back", buttonStyle: CustomButtonStyles.outlinePrimaryTL11, onPressed: () {onTapBack(context);}); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 39.v, width: 90.h, text: "Next...", margin: EdgeInsets.only(left: 20.h), buttonStyle: CustomButtonStyles.fillPrimaryTL11, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer20, onPressed: () {onTapNext(context);}); } 
/// Navigates to the jSCreateAccountPageThreeScreen when the action is triggered.
onTapBack(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageThreeScreen); } 
/// Navigates to the jSCreateAccountPageFiveScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageFiveScreen); } 
 }
