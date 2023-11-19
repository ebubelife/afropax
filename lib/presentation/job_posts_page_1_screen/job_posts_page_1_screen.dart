import '../job_posts_page_1_screen/widgets/frametwo2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';
import 'package:oga_artisan/widgets/custom_icon_button.dart';
import 'package:oga_artisan/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class JobPostsPage1Screen extends StatelessWidget {
  JobPostsPage1Screen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Good Morning ",
                                    style: theme.textTheme.titleLarge),
                                TextSpan(
                                    text: "Lucy",
                                    style: CustomTextStyles.titleLargePrimary_1)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 28.v),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, right: 25.h),
                      child: CustomSearchView(
                          controller: searchController, hintText: "Search")),
                  SizedBox(height: 41.v),
                  _buildFrameTwo(context),
                  SizedBox(height: 41.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("Tells us who you’re hiring :)",
                              style: CustomTextStyles.titleMediumSemiBold18))),
                  SizedBox(height: 17.v),
                  _buildJobTitle(context),
                  SizedBox(height: 22.v),
                  Divider(indent: 24.h, endIndent: 25.h),
                  SizedBox(height: 22.v),
                  _buildCompany(context),
                  SizedBox(height: 23.v),
                  Divider(indent: 24.h, endIndent: 25.h),
                  SizedBox(height: 22.v),
                  _buildWorkplaceType(context),
                  SizedBox(height: 24.v),
                  Divider(indent: 24.h, endIndent: 25.h),
                  SizedBox(height: 20.v),
                  _buildJobLocation(context),
                  SizedBox(height: 22.v),
                  Divider(indent: 24.h, endIndent: 25.h),
                  SizedBox(height: 22.v),
                  _buildJobType(context),
                  SizedBox(height: 24.v),
                  Divider(indent: 24.h, endIndent: 25.h),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                      height: 41.v,
                      width: 110.h,
                      text: "Next",
                      margin: EdgeInsets.only(right: 25.h),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                      buttonTextStyle: CustomTextStyles
                          .titleMediumOnPrimaryContainerSemiBold18,
                      onPressed: () {
                        onTapNext(context);
                      },
                      alignment: Alignment.centerRight),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgJamMenuIcon,
            margin: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup119,
              margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameTwo(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Wrap(
            runSpacing: 5.v,
            spacing: 5.h,
            children:
                List<Widget>.generate(2, (index) => Frametwo2ItemWidget())));
  }

  /// Section Widget
  Widget _buildJobTitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 34.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("Job title*", style: CustomTextStyles.titleMediumPrimary18_1),
            SizedBox(height: 10.v),
            Text("Add job title",
                style: CustomTextStyles.bodyMediumPrimaryContainer)
          ]),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.outlinePrimary,
                  child: CustomImageView(imagePath: ImageConstant.imgPlus)))
        ]));
  }

  /// Section Widget
  Widget _buildCompany(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 40.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Company*",
                            style: CustomTextStyles.titleMediumPrimary18_1),
                        SizedBox(height: 7.v),
                        Text("Peak Infotech Systems",
                            style: CustomTextStyles.bodyMediumPrimaryContainer)
                      ]),
                  CustomImageView(
                      imagePath: ImageConstant.imgSimpleLineIconsPencil,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 15.v, bottom: 6.v))
                ])));
  }

  /// Section Widget
  Widget _buildWorkplaceType(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 40.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Workplace type*",
                            style: CustomTextStyles.titleMediumPrimary18_1),
                        SizedBox(height: 7.v),
                        Text("On-Site",
                            style: CustomTextStyles.bodyMediumPrimaryContainer)
                      ]),
                  CustomImageView(
                      imagePath: ImageConstant.imgSimpleLineIconsPencil,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 16.v, bottom: 5.v))
                ])));
  }

  /// Section Widget
  Widget _buildJobLocation(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 40.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Location*",
                            style: CustomTextStyles.titleMediumPrimary18_1),
                        SizedBox(height: 10.v),
                        Text("Ibadan, Oyo State, Nigeria",
                            style: CustomTextStyles.bodyMediumPrimaryContainer)
                      ]),
                  CustomImageView(
                      imagePath: ImageConstant.imgSimpleLineIconsPencil,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 19.v, bottom: 5.v))
                ])));
  }

  /// Section Widget
  Widget _buildJobType(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 40.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job type*",
                            style: CustomTextStyles.titleMediumPrimary18_1),
                        SizedBox(height: 7.v),
                        Text("Full-time",
                            style: CustomTextStyles.bodyMediumPrimaryContainer)
                      ]),
                  CustomImageView(
                      imagePath: ImageConstant.imgSimpleLineIconsPencil,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 18.v, bottom: 3.v))
                ])));
  }

  /// Navigates to the jobPostsPage2OneScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobPostsPage2OneScreen);
  }
}
