import '../my_jobs_page_screen/widgets/professionalfeatures_item_widget.dart';import '../my_jobs_page_screen/widgets/viewapplicants2_item_widget.dart';import '../my_jobs_page_screen/widgets/viewapplicants4_item_widget.dart';import '../my_jobs_page_screen/widgets/viewapplicants6_item_widget.dart';import '../my_jobs_page_screen/widgets/viewapplicants_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';import 'package:oga_artisan/widgets/app_bar/appbar_subtitle_three.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_outlined_button.dart';class MyJobsPageScreen extends StatelessWidget {const MyJobsPageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 25.v), child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildMer(context), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgOiPeople, height: 21.adaptSize, width: 21.adaptSize), Padding(padding: EdgeInsets.only(left: 9.h, top: 3.v), child: Text("0 applicants", style: CustomTextStyles.titleSmallMedium_1)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 9.h, top: 2.v), child: Text("0 views", style: CustomTextStyles.titleSmallPrimaryMedium_1))])), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 1.h), child: _buildFreeJobPost(context, freeJobPost: "Free job post")), SizedBox(height: 23.v), _buildProfessionalFeatures(context), SizedBox(height: 17.v), CustomOutlinedButton(height: 34.v, width: 90.h, text: "More...", margin: EdgeInsets.only(left: 1.h), buttonStyle: CustomButtonStyles.outlinePrimaryContainerTL17, buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainerSemiBold_2), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Job Description", style: theme.textTheme.titleMedium)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("You must be skilled and intelligent minded person", style: CustomTextStyles.bodyMediumPrimaryContainer)), SizedBox(height: 18.v), Divider(), SizedBox(height: 34.v), _buildFlutterDeveloper(context), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgOiPeople, height: 21.adaptSize, width: 21.adaptSize), Padding(padding: EdgeInsets.only(left: 9.h, top: 3.v), child: Text("5 applicants", style: CustomTextStyles.titleSmallMedium_1)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v), decoration: BoxDecoration(color: theme.colorScheme.primaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 9.h, top: 2.v), child: Text("200 views", style: CustomTextStyles.titleSmallPrimaryMedium_1))])), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 1.h), child: _buildFreeJobPost(context, freeJobPost: "Free job post")), SizedBox(height: 23.v), _buildViewApplicants(context), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Job Description", style: theme.textTheme.titleMedium)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("You must be skilled and intelligent minded person", style: CustomTextStyles.bodyMediumPrimaryContainer)), SizedBox(height: 18.v), Divider(), SizedBox(height: 36.v), _buildITSupport(context), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgOiPeople, height: 21.adaptSize, width: 21.adaptSize), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("9 applicants", style: CustomTextStyles.titleSmallMedium_1)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 9.h, top: 4.v), child: Text("50 views", style: CustomTextStyles.titleSmallPrimaryMedium_1))])), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 1.h), child: _buildFreeJobPost(context, freeJobPost: "Free job post")), SizedBox(height: 23.v), _buildViewApplicants1(context), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Job Description", style: theme.textTheme.titleMedium)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("You must be skilled and intelligent minded person", style: CustomTextStyles.bodyMediumPrimaryContainer)), SizedBox(height: 20.v), Divider(), SizedBox(height: 29.v), _buildMer1(context), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgOiPeople, height: 21.adaptSize, width: 21.adaptSize), Padding(padding: EdgeInsets.only(left: 9.h, top: 2.v, bottom: 2.v), child: Text("0 applicants", style: CustomTextStyles.titleSmallMedium_1)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 9.h, top: 2.v, bottom: 2.v), child: Text("0 views", style: CustomTextStyles.titleSmallPrimaryMedium_1))])), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 1.h), child: _buildFreeJobPost(context, freeJobPost: "Free job post")), SizedBox(height: 23.v), _buildViewApplicants2(context), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Job Description", style: theme.textTheme.titleMedium)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("You must be skilled and intelligent minded person", style: CustomTextStyles.bodyMediumPrimaryContainer)), SizedBox(height: 20.v), Divider(), SizedBox(height: 29.v), _buildMer2(context), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgOiPeople, height: 21.adaptSize, width: 21.adaptSize), Padding(padding: EdgeInsets.only(left: 9.h, top: 2.v, bottom: 2.v), child: Text("0 applicants", style: CustomTextStyles.titleSmallMedium_1)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 9.h, top: 2.v, bottom: 2.v), child: Text("0 views", style: CustomTextStyles.titleSmallPrimaryMedium_1))])), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 1.h), child: _buildFreeJobPost(context, freeJobPost: "Free job post")), SizedBox(height: 23.v), _buildViewApplicants3(context), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Job Description", style: theme.textTheme.titleMedium)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("You must be skilled and intelligent minded person", style: CustomTextStyles.bodyMediumPrimaryContainer)), SizedBox(height: 20.v), Divider()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 114.v, leadingWidth: 45.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 21.h, top: 74.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleThree(text: "Manage job posts", margin: EdgeInsets.only(top: 74.v, bottom: 13.v)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildMer(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 57.v, width: 56.h, margin: EdgeInsets.only(bottom: 7.v), padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup173), fit: BoxFit.cover)), child: CustomImageView(imagePath: ImageConstant.img9689687150Mer, height: 39.v, width: 42.h, alignment: Alignment.center)), Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Assistant", style: CustomTextStyles.titleMediumPrimary18_1), Text("Ibadan (On-Site)", style: CustomTextStyles.titleSmallGray500), SizedBox(height: 1.v), SizedBox(width: 169.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Active", style: CustomTextStyles.titleSmallLightgreen900), CustomImageView(imagePath: ImageConstant.imgMingcuteQuestionFill, height: 18.adaptSize, width: 18.adaptSize), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 7.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Text("Posted today", style: CustomTextStyles.titleSmallPrimaryMedium_1)]))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgHumbleiconsPencil, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 17.v, bottom: 23.v))])); } 
/// Section Widget
Widget _buildProfessionalFeatures(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Wrap(runSpacing: 5.v, spacing: 5.h, children: List<Widget>.generate(1, (index) => ProfessionalfeaturesItemWidget()))); } 
/// Section Widget
Widget _buildFlutterDeveloper(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgDownloadRemovebgPreview47x47, height: 47.adaptSize, width: 47.adaptSize, margin: EdgeInsets.only(bottom: 12.v)), Padding(padding: EdgeInsets.only(left: 20.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Flutter Developer", style: CustomTextStyles.titleMediumPrimary18_1), Text("Ibadan (On-Site)", style: CustomTextStyles.titleSmallGray500), SizedBox(height: 1.v), SizedBox(width: 201.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Active", style: CustomTextStyles.titleSmallLightgreen900), CustomImageView(imagePath: ImageConstant.imgMingcuteQuestionFill, height: 18.adaptSize, width: 18.adaptSize), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 7.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(2.h))), Text("Posted 3 daysago", style: CustomTextStyles.titleSmallPrimaryMedium_1)]))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgHumbleiconsPencil, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 12.v, bottom: 23.v))])); } 
/// Section Widget
Widget _buildViewApplicants(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Wrap(runSpacing: 6.5.v, spacing: 6.5.h, children: List<Widget>.generate(3, (index) => ViewapplicantsItemWidget()))); } 
/// Section Widget
Widget _buildITSupport(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgDownloadRemovebgPreview43x43, height: 43.adaptSize, width: 43.adaptSize, margin: EdgeInsets.only(bottom: 14.v)), Padding(padding: EdgeInsets.only(left: 22.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("IT Support", style: CustomTextStyles.titleMediumPrimary18_1), Text("Ibadan (On-Site)", style: CustomTextStyles.titleSmallGray500), SizedBox(height: 6.v), SizedBox(width: 195.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Active", style: CustomTextStyles.titleSmallLightgreen900)), CustomImageView(imagePath: ImageConstant.imgMingcuteQuestionFill, height: 18.adaptSize, width: 18.adaptSize), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 7.v), decoration: BoxDecoration(color: theme.colorScheme.primaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Posted last week", style: CustomTextStyles.titleSmallPrimaryMedium_1))]))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgHumbleiconsPencil, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 10.v, bottom: 23.v))])); } 
/// Section Widget
Widget _buildViewApplicants1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Wrap(runSpacing: 6.v, spacing: 6.h, children: List<Widget>.generate(3, (index) => Viewapplicants2ItemWidget()))); } 
/// Section Widget
Widget _buildMer1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 57.v, width: 56.h, margin: EdgeInsets.only(bottom: 6.v), padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup173), fit: BoxFit.cover)), child: CustomImageView(imagePath: ImageConstant.img9689687150Mer, height: 39.v, width: 42.h, alignment: Alignment.center)), Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Assistant", style: CustomTextStyles.titleMediumPrimary18_1), Text("Ibadan (On-Site)", style: CustomTextStyles.titleSmallGray500), SizedBox(height: 2.v), SizedBox(width: 169.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Active", style: CustomTextStyles.titleSmallLightgreen900)), CustomImageView(imagePath: ImageConstant.imgMingcuteQuestionFill, height: 18.adaptSize, width: 18.adaptSize), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 7.v), decoration: BoxDecoration(color: theme.colorScheme.primaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Posted today", style: CustomTextStyles.titleSmallPrimaryMedium_1))]))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgHumbleiconsPencil, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 17.v, bottom: 23.v))])); } 
/// Section Widget
Widget _buildViewApplicants2(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Wrap(runSpacing: 6.v, spacing: 6.h, children: List<Widget>.generate(3, (index) => Viewapplicants4ItemWidget()))); } 
/// Section Widget
Widget _buildMer2(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 57.v, width: 56.h, margin: EdgeInsets.only(bottom: 6.v), padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup173), fit: BoxFit.cover)), child: CustomImageView(imagePath: ImageConstant.img9689687150Mer, height: 39.v, width: 42.h, alignment: Alignment.center)), Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Assistant", style: CustomTextStyles.titleMediumPrimary18_1), Text("Ibadan (On-Site)", style: CustomTextStyles.titleSmallGray500), SizedBox(height: 2.v), SizedBox(width: 169.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Active", style: CustomTextStyles.titleSmallLightgreen900)), CustomImageView(imagePath: ImageConstant.imgMingcuteQuestionFill, height: 18.adaptSize, width: 18.adaptSize), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 7.v), decoration: BoxDecoration(color: theme.colorScheme.primaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Posted today", style: CustomTextStyles.titleSmallPrimaryMedium_1))]))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgHumbleiconsPencil, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 17.v, bottom: 23.v))])); } 
/// Section Widget
Widget _buildViewApplicants3(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Wrap(runSpacing: 6.v, spacing: 6.h, children: List<Widget>.generate(3, (index) => Viewapplicants6ItemWidget()))); } 
/// Common widget
Widget _buildFreeJobPost(BuildContext context, {required String freeJobPost, }) { return Row(children: [CustomImageView(imagePath: ImageConstant.imgFluentMdl2PostUpdate, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 7.h, top: 3.v, bottom: 3.v), child: Text(freeJobPost, style: CustomTextStyles.titleSmallMedium_1.copyWith(color: theme.colorScheme.primaryContainer.withOpacity(1))))]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
