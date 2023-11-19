import '../message_page_screen/widgets/frametwo8_item_widget.dart';import '../message_page_screen/widgets/userschedule_item_widget.dart';import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';import 'package:oga_artisan/widgets/app_bar/appbar_trailing_image.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_bottom_bar.dart';import 'package:oga_artisan/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class MessagePageScreen extends StatelessWidget {MessagePageScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildHome(context), SizedBox(height: 19.v), _buildUserSchedule(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildHome(BuildContext context) { return SizedBox(height: 311.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(vertical: 43.v), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomAppBar(height: 38.v, leadingWidth: 54.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgJamMenuIcon, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgGroup119, margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 7.v))]), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: RichText(text: TextSpan(children: [TextSpan(text: "Good Morning ", style: theme.textTheme.titleLarge), TextSpan(text: "Lucy", style: CustomTextStyles.titleLargePrimary_1)]), textAlign: TextAlign.left))), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 24.h, right: 25.h), child: CustomSearchView(controller: searchController, hintText: "Search")), SizedBox(height: 53.v)]))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(bottom: 13.v), child: Wrap(runSpacing: 5.v, spacing: 5.h, children: List<Widget>.generate(2, (index) => Frametwo8ItemWidget()))))])); } 
/// Section Widget
Widget _buildUserSchedule(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 17.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 32.v);}, itemCount: 7, itemBuilder: (context, index) {return UserscheduleItemWidget(onTapUserSchedule: () {onTapUserSchedule(context);});})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.categoryDesignerPagePage; case BottomBarEnum.Uiwmessage: return "/"; case BottomBarEnum.Uilbagalt: return "/"; case BottomBarEnum.Settingsonprimarycontainer: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.categoryDesignerPagePage: return CategoryDesignerPagePage(); default: return DefaultWidget();} } 
/// Navigates to the messagePageChattingScreen when the action is triggered.
onTapUserSchedule(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagePageChattingScreen); } 
 }
