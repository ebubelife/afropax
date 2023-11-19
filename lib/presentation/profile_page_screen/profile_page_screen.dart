import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_iconbutton_two.dart';import 'package:oga_artisan/widgets/app_bar/appbar_subtitle_two.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_bottom_bar.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class ProfilePageScreen extends StatelessWidget {ProfilePageScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 34.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: SizedBox(height: 184.adaptSize, width: 184.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse40, height: 184.adaptSize, width: 184.adaptSize, radius: BorderRadius.circular(92.h), alignment: Alignment.center), CustomIconButton(height: 57.adaptSize, width: 57.adaptSize, padding: EdgeInsets.all(14.h), alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgGroup103))]))), SizedBox(height: 53.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Account", style: CustomTextStyles.titleMediumPrimarySemiBold_1)), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("+234 705 745 3411", style: theme.textTheme.titleMedium)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Phone number", style: theme.textTheme.labelLarge)), SizedBox(height: 23.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("@Lucy", style: theme.textTheme.titleMedium)), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Username", style: theme.textTheme.labelLarge)), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Bio", style: theme.textTheme.titleMedium)), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Add a few words about yourself", style: theme.textTheme.labelLarge)), SizedBox(height: 41.v), Text("Is +2347057453411 still your number?", style: CustomTextStyles.titleSmallPrimaryMedium_1), SizedBox(height: 7.v), Container(width: 317.h, margin: EdgeInsets.only(right: 63.h), child: RichText(text: TextSpan(children: [TextSpan(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do...  ", style: theme.textTheme.labelLarge), TextSpan(text: "Learn more", style: CustomTextStyles.labelLargePrimary)]), textAlign: TextAlign.left)), SizedBox(height: 23.v), Row(children: [CustomElevatedButton(height: 43.v, width: 128.h, text: "Yes", buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainerMedium), CustomElevatedButton(height: 43.v, width: 128.h, text: "No", margin: EdgeInsets.only(left: 6.h), buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainerMedium)]), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 117.v, leadingWidth: 58.h, leading: AppbarLeadingIconbuttonTwo(imagePath: ImageConstant.imgArrowLeftOnprimarycontainer, margin: EdgeInsets.only(left: 10.h, top: 59.v, bottom: 10.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "Lucy Williams", margin: EdgeInsets.only(left: 4.h, top: 72.v, bottom: 17.v)), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.categoryDesignerPagePage; case BottomBarEnum.Uiwmessage: return "/"; case BottomBarEnum.Uilbagalt: return "/"; case BottomBarEnum.Settingsonprimarycontainer: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.categoryDesignerPagePage: return CategoryDesignerPagePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
