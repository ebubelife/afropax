import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';import 'package:oga_artisan/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class CategoryDesignerPageContainerScreen extends StatelessWidget {CategoryDesignerPageContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.categoryDesignerPagePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.categoryDesignerPagePage; case BottomBarEnum.Uiwmessage: return "/"; case BottomBarEnum.Uilbagalt: return "/"; case BottomBarEnum.Settingsonprimarycontainer: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.categoryDesignerPagePage: return CategoryDesignerPagePage(); default: return DefaultWidget();} } 
 }
