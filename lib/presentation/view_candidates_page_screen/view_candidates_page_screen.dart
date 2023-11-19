import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';
import 'package:oga_artisan/widgets/custom_search_view.dart';

class ViewCandidatesPageScreen extends StatelessWidget {
  ViewCandidatesPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Good Morning ",
                            style: theme.textTheme.titleLarge,
                          ),
                          TextSpan(
                            text: "Lucy",
                            style: CustomTextStyles.titleLargePrimary_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                  ),
                  SizedBox(height: 37.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "0 Applicants",
                      style: CustomTextStyles.titleMediumSemiBold18,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildFlag(context),
                  SizedBox(height: 19.v),
                  Divider(),
                  SizedBox(height: 21.v),
                  Text(
                    "Applicants are coming soon :)",
                    style: CustomTextStyles.titleMediumOpenSansSemiBold,
                  ),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "5 Applicants",
                      style: CustomTextStyles.titleMediumSemiBold18,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildFlag1(context),
                  SizedBox(height: 19.v),
                  Divider(),
                  SizedBox(height: 28.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "9 Applicants",
                      style: CustomTextStyles.titleMediumSemiBold18,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildFlag2(context),
                  SizedBox(height: 19.v),
                  Divider(),
                  SizedBox(height: 28.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "10 Applicants",
                      style: CustomTextStyles.titleMediumSemiBold18,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildFlag3(context),
                  SizedBox(height: 19.v),
                  Divider(),
                  SizedBox(height: 180.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Job Description",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You must be a skilled and intelligent minded person",
                      style: CustomTextStyles.bodyMediumPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgJamMenuIcon,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup119,
          margin: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFlag(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFlag,
          height: 39.v,
          width: 40.h,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Assistant",
                style: CustomTextStyles.titleMediumPrimary18_1,
              ),
              SizedBox(height: 3.v),
              _buildActive(
                context,
                active: "Active",
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Text(
            "MANAGE JOB",
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFlag1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFlag,
          height: 39.v,
          width: 40.h,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter Developer",
                style: CustomTextStyles.titleMediumPrimary18_1,
              ),
              SizedBox(height: 1.v),
              Row(
                children: [
                  Text(
                    "Active",
                    style: CustomTextStyles.titleSmallLightgreen900,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMingcuteQuestionFill,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 2.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "closed",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 11.v,
          ),
          child: Text(
            "MANAGE JOB",
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFlag2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFlag,
          height: 39.v,
          width: 40.h,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "IT Support",
                style: CustomTextStyles.titleMediumPrimary18_1,
              ),
              SizedBox(height: 1.v),
              _buildActive(
                context,
                active: "Active",
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 11.v,
          ),
          child: Text(
            "MANAGE JOB",
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFlag3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFlag,
          height: 39.v,
          width: 40.h,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "UI/UX Designer",
                style: CustomTextStyles.titleMediumPrimary18_1,
              ),
              SizedBox(height: 1.v),
              _buildActive(
                context,
                active: "Active",
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 11.v,
          ),
          child: Text(
            "MANAGE JOB",
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildActive(
    BuildContext context, {
    required String active,
  }) {
    return Row(
      children: [
        Text(
          active,
          style: CustomTextStyles.titleSmallLightgreen900.copyWith(
            color: appTheme.lightGreen900,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMingcuteQuestionFill,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 2.h),
        ),
      ],
    );
  }
}
