import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_outlined_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class JSCreateAccountPageFiveScreen extends StatelessWidget {JSCreateAccountPageFiveScreen({Key? key}) : super(key: key);

TextEditingController selectEmploymentHistoryController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 76.v), Expanded(child: SingleChildScrollView(child: Column(children: [Container(width: 305.h, margin: EdgeInsets.only(left: 60.h, right: 64.h), child: Text("Create your free profile and let the jobs find you", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumOnPrimaryContainer)), SizedBox(height: 17.v), SizedBox(height: 10.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 6, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.31), dotHeight: 10.v, dotWidth: 10.h))), SizedBox(height: 21.v), Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 38.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 19.v), Text("Employment History", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 14.v), Text("Select Employment History", style: CustomTextStyles.titleMediumBluegray400SemiBold), SizedBox(height: 7.v), CustomTextFormField(controller: selectEmploymentHistoryController, hintText: "Select Employment History", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done), SizedBox(height: 18.v), Text("You can add more experiences when you sign in :)", style: CustomTextStyles.bodyMediumPrimaryContainer13_1), SizedBox(height: 34.v), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomOutlinedButton(width: 90.h, text: "Back", buttonStyle: CustomButtonStyles.outlinePrimaryTL11, onPressed: () {onTapBack(context);}), CustomElevatedButton(height: 39.v, width: 90.h, text: "Next...", margin: EdgeInsets.only(left: 20.h), buttonStyle: CustomButtonStyles.fillPrimaryTL11, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer20, onPressed: () {onTapNext(context);})])), SizedBox(height: 426.v), Align(alignment: Alignment.center, child: Text("Already Registered? Log In Now", style: CustomTextStyles.bodySmallPrimary))]))])))])))); } 
/// Navigates to the jSCreateAccountPageScreen when the action is triggered.
onTapBack(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageScreen); } 
/// Navigates to the jSCreateAccountPageOneScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageOneScreen); } 
 }