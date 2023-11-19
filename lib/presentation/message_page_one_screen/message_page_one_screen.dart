import '../message_page_one_screen/widgets/userschedule1_item_widget.dart';import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';import 'package:oga_artisan/widgets/app_bar/appbar_trailing_image.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_bottom_bar.dart';import 'package:oga_artisan/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class MessagePageOneScreen extends StatelessWidget {MessagePageOneScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildJamMenuIcon(context), SizedBox(height: 29.v), _buildUserSchedule(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildJamMenuIcon(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.fillOnPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 33.v), CustomAppBar(height: 38.v, leadingWidth: 54.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgJamMenuIcon, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgGroup119, margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 7.v))]), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: RichText(text: TextSpan(children: [TextSpan(text: "Welcome back, ", style: theme.textTheme.titleLarge), TextSpan(text: "Racoon", style: CustomTextStyles.titleLargePrimary_1)]), textAlign: TextAlign.left))), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 24.h, right: 25.h), child: CustomSearchView(controller: searchController, hintText: "Search"))])); } 
/// Section Widget
Widget _buildUserSchedule(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 17.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 32.v);}, itemCount: 7, itemBuilder: (context, index) {return Userschedule1ItemWidget(onTapUserSchedule: () {onTapUserSchedule(context);});})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.categoryDesignerPagePage; case BottomBarEnum.Uiwmessage: return "/"; case BottomBarEnum.Uilbagalt: return "/"; case BottomBarEnum.Settingsonprimarycontainer: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.categoryDesignerPagePage: return CategoryDesignerPagePage(); default: return DefaultWidget();} } 
/// Navigates to the messagePageChattingOneScreen when the action is triggered.
onTapUserSchedule(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagePageChattingOneScreen); } 
 }
