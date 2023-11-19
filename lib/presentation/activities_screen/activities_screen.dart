import '../activities_screen/widgets/userprofile3_item_widget.dart';import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';import 'package:oga_artisan/widgets/app_bar/appbar_subtitle_four.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_bottom_bar.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_outlined_button.dart';
// ignore_for_file: must_be_immutable
class ActivitiesScreen extends StatelessWidget {ActivitiesScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 18.v), child: Column(children: [_buildReadMore1(context), SizedBox(height: 31.v), _buildFrameSeventyEight(context), SizedBox(height: 34.v), _buildUserProfile(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 45.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 21.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleFour(text: "Activities")); } 
/// Section Widget
Widget _buildReadMore(BuildContext context) { return CustomElevatedButton(height: 41.v, width: 115.h, text: "Read More", margin: EdgeInsets.only(left: 20.h, bottom: 36.v), buttonStyle: CustomButtonStyles.fillOnPrimaryContainer, buttonTextStyle: CustomTextStyles.titleMediumPrimary18_1, alignment: Alignment.bottomLeft); } 
/// Section Widget
Widget _buildReadMore1(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: theme.colorScheme.primary, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder18), child: Container(height: 197.v, width: 380.h, decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topLeft, child: Container(width: 199.h, margin: EdgeInsets.only(left: 20.h, top: 46.v), child: Text("Get tips for getting your\nDream Job", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumOnPrimaryContainerBold17))), _buildReadMore(context), CustomImageView(imagePath: ImageConstant.img9ebdc45a3e7a600, height: 197.v, width: 296.h, radius: BorderRadius.circular(16.h), alignment: Alignment.centerRight)]))); } 
/// Section Widget
Widget _buildAllStatus(BuildContext context) { return CustomElevatedButton(height: 39.v, width: 103.h, text: "All Status", buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer_1); } 
/// Section Widget
Widget _buildApplied(BuildContext context) { return CustomOutlinedButton(width: 103.h, text: "Applied", margin: EdgeInsets.only(left: 7.h), buttonStyle: CustomButtonStyles.outlinePrimaryContainerTL13, buttonTextStyle: theme.textTheme.titleMedium!); } 
/// Section Widget
Widget _buildFrameSeventyEight(BuildContext context) { return Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 25.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [_buildAllStatus(context), _buildApplied(context), SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 7.h), child: IntrinsicWidth(child: Container(decoration: AppDecoration.outlinePrimaryContainer2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 10.v, bottom: 8.v), child: Text("Reviewed", style: theme.textTheme.titleMedium)), Container(height: 39.v, width: 103.h, margin: EdgeInsets.only(left: 22.h), decoration: BoxDecoration(borderRadius: BorderRadius.circular(13.h), border: Border.all(color: theme.colorScheme.primaryContainer.withOpacity(1), width: 1.h)))])))), Padding(padding: EdgeInsets.only(left: 15.h, top: 10.v, bottom: 8.v), child: Text("Interviewed", style: theme.textTheme.titleMedium))]))); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 18.v);}, itemCount: 3, itemBuilder: (context, index) {return Userprofile3ItemWidget();})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.categoryDesignerPagePage; case BottomBarEnum.Uiwmessage: return "/"; case BottomBarEnum.Uilbagalt: return "/"; case BottomBarEnum.Settingsonprimarycontainer: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.categoryDesignerPagePage: return CategoryDesignerPagePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
