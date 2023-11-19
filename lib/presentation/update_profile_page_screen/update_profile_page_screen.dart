import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_iconbutton_two.dart';import 'package:oga_artisan/widgets/app_bar/appbar_subtitle_five.dart';import 'package:oga_artisan/widgets/app_bar/appbar_subtitle_two.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_bottom_bar.dart';import 'package:oga_artisan/widgets/custom_icon_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class UpdateProfilePageScreen extends StatelessWidget {UpdateProfilePageScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController officeTitleController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController countryController = TextEditingController();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 34.v), child: Column(children: [SizedBox(height: 184.adaptSize, width: 184.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse40, height: 184.adaptSize, width: 184.adaptSize, radius: BorderRadius.circular(92.h), alignment: Alignment.center), CustomIconButton(height: 57.adaptSize, width: 57.adaptSize, padding: EdgeInsets.all(7.h), alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgFluentCameraAdd48Filled))])), SizedBox(height: 42.v), Align(alignment: Alignment.centerLeft, child: Text("Full Name", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 16.v), _buildFullName(context), SizedBox(height: 28.v), Align(alignment: Alignment.centerLeft, child: Text("Office Title", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 16.v), _buildOfficeTitle(context), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: Text("Phone Number", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 16.v), _buildPhoneNumber(context), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("Company Name", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 15.v), _buildName(context), SizedBox(height: 23.v), Align(alignment: Alignment.centerLeft, child: Text("Country", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 15.v), _buildCountry(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 117.v, leadingWidth: 59.h, leading: AppbarLeadingIconbuttonTwo(imagePath: ImageConstant.imgArrowLeftOnprimarycontainer, margin: EdgeInsets.only(left: 11.h, top: 58.v, bottom: 11.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Edit Profile", margin: EdgeInsets.only(top: 68.v, bottom: 21.v)), actions: [AppbarSubtitleFive(text: "Save", margin: EdgeInsets.fromLTRB(23.h, 72.v, 23.h, 22.v), onTap: () {onTapSave(context);})], styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return CustomTextFormField(controller: fullNameController, hintText: "e.g David Jude", hintStyle: theme.textTheme.bodyMedium!, borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer, filled: false); } 
/// Section Widget
Widget _buildOfficeTitle(BuildContext context) { return CustomTextFormField(controller: officeTitleController, hintText: "Your Office Title ( eg CEO )", hintStyle: theme.textTheme.bodyMedium!, borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer, filled: false); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return CustomTextFormField(controller: phoneNumberController, hintText: "E.g 90 000 000 00", hintStyle: theme.textTheme.bodyMedium!, borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer, filled: false); } 
/// Section Widget
Widget _buildName(BuildContext context) { return CustomTextFormField(controller: nameController, hintText: "Your Company Name", hintStyle: theme.textTheme.bodyMedium!, borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer, filled: false); } 
/// Section Widget
Widget _buildCountry(BuildContext context) { return CustomTextFormField(controller: countryController, hintText: "Nigeria", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer, filled: false); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.categoryDesignerPagePage; case BottomBarEnum.Uiwmessage: return "/"; case BottomBarEnum.Uilbagalt: return "/"; case BottomBarEnum.Settingsonprimarycontainer: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.categoryDesignerPagePage: return CategoryDesignerPagePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the settingsPageScreen when the action is triggered.
onTapSave(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsPageScreen); } 
 }
