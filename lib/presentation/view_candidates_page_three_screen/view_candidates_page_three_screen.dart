import '../view_candidates_page_three_screen/widgets/userprofile_item_widget.dart';import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';import 'package:oga_artisan/widgets/app_bar/appbar_trailing_image.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable
class ViewCandidatesPageThreeScreen extends StatelessWidget {ViewCandidatesPageThreeScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 15.v), child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "Good Morning ", style: theme.textTheme.titleLarge), TextSpan(text: "Lucy", style: CustomTextStyles.titleLargePrimary_1)]), textAlign: TextAlign.left), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 1.h), child: CustomSearchView(controller: searchController, hintText: "Search")), SizedBox(height: 48.v), _buildUserProfile(context), SizedBox(height: 180.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Job Description", style: theme.textTheme.titleMedium)), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("You must be a skilled and intelligent minded person", style: CustomTextStyles.bodyMediumPrimaryContainer))])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 45.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 21.h, top: 22.v, bottom: 10.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgGroup119, margin: EdgeInsets.fromLTRB(22.h, 10.v, 22.h, 22.v))]); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 146.v, crossAxisCount: 2, mainAxisSpacing: 20.h, crossAxisSpacing: 20.h), physics: NeverScrollableScrollPhysics(), itemCount: 5, itemBuilder: (context, index) {return UserprofileItemWidget(onTapUserProfile: () {onTapUserProfile(context);});})); } 
/// Navigates to the viewCandidatesPageOneScreen when the action is triggered.
onTapUserProfile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.viewCandidatesPageOneScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
