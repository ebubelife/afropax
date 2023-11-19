import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';

class JobPostsPageDraweritem extends StatelessWidget {
  const JobPostsPageDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: 267.h,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 50.v),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgX,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 8.h),
                  onTap: () {
                    onTapImgX(context);
                  }),
              SizedBox(height: 48.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgHomePrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 13.h, top: 3.v),
                        child: Text("Dashboard",
                            style: CustomTextStyles.titleMediumPrimary18_1))
                  ])),
              SizedBox(height: 37.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgBriefcase,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h, top: 3.v),
                        child: Text("All Assigned Applicant",
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer))
                  ])),
              SizedBox(height: 37.v),
              CustomElevatedButton(
                  height: 24.v,
                  width: 110.h,
                  text: "My Jobs",
                  margin: EdgeInsets.only(left: 13.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 13.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgSend,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainer,
                  onPressed: () {
                    onTapMyJobs(context);
                  }),
              SizedBox(height: 39.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSearchPrimarycontainer,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h, top: 3.v),
                        child: Text("Messages",
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer))
                  ])),
              SizedBox(height: 37.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, right: 37.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 13.h, top: 2.v),
                        child: Text("Change Password",
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer))
                  ])),
              SizedBox(height: 38.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text("View Profile",
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer))
                  ])),
              SizedBox(height: 39.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUserplus,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 13.h, top: 2.v),
                        child: Text("Update Profile",
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer))
                  ])),
              SizedBox(height: 38.v),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLogOut,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 13.h, top: 3.v),
                        child: Text("Logout",
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer))
                  ])),
              SizedBox(height: 38.v)
            ])));
  }

  /// Navigates to the jobPostsPage1Screen when the action is triggered.
  onTapImgX(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobPostsPage1Screen);
  }

  /// Navigates to the myJobsPageScreen when the action is triggered.
  onTapMyJobs(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myJobsPageScreen);
  }
}
