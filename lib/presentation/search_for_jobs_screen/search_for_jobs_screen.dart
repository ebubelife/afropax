import '../search_for_jobs_screen/widgets/sales_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/presentation/category_designer_page_page/category_designer_page_page.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_trailing_circleimage_one.dart';
import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';
import 'package:oga_artisan/widgets/custom_bottom_bar.dart';
import 'package:oga_artisan/widgets/custom_search_view.dart';

class SearchForJobsScreen extends StatelessWidget {
  SearchForJobsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 17.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Text(
                  "Find your Dream Job",
                  style: CustomTextStyles.titleLargePrimaryBold,
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Text(
                  "Welcome, Racoon",
                  style: CustomTextStyles.titleMediumBluegray400,
                ),
              ),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Text(
                  "Browse by Category",
                  style: CustomTextStyles.titleMediumPrimaryContainerSemiBold_3,
                ),
              ),
              SizedBox(height: 15.v),
              _buildSales(context),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Text(
                  "Trending Companies",
                  style: CustomTextStyles.titleMediumPrimaryContainerSemiBold_3,
                ),
              ),
              SizedBox(height: 19.v),
              _buildGoogleGLogo(context),
              SizedBox(height: 21.v),
              _buildLinkedIn(context),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Text(
                  "Jobs within your Location",
                  style: CustomTextStyles.titleMediumPrimaryContainerSemiBold_3,
                ),
              ),
              SizedBox(height: 15.v),
              _buildFrameSixtyEight(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup119,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarTrailingCircleimageOne(
          imagePath: ImageConstant.imgEllipse6954x54,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 1.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSales(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        runSpacing: 17.v,
        spacing: 17.h,
        children: List<Widget>.generate(5, (index) => SalesItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleGLogo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 26.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 39.v,
                width: 45.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.outlineBlack9006.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGoogleGLogo,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                height: 37.v,
                width: 61.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Google",
                        style: CustomTextStyles.titleMediumPrimarySemiBold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "149 Jobs",
                        style: CustomTextStyles.titleSmallBluegray400Medium_1,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 53,
              ),
              SizedBox(
                width: 138.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 39.v,
                      width: 45.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.outlineBlack9006.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFacebookLogo2,
                        height: 23.adaptSize,
                        width: 23.adaptSize,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Facebook",
                            style: CustomTextStyles.titleMediumPrimarySemiBold,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "132 Jobs",
                            style:
                                CustomTextStyles.titleSmallBluegray400Medium_1,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 39.v,
                      width: 45.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.outlineBlack9006.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: CustomImageView(
                        imagePath:
                            ImageConstant.imgDownloadRemovebgPreview29x29,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        top: 22.v,
                      ),
                      child: Text(
                        "149 Jobs",
                        style: CustomTextStyles.titleSmallBluegray400Medium_1,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 46,
              ),
              SizedBox(
                height: 39.v,
                width: 31.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 26.h,
                  bottom: 18.v,
                ),
                child: Text(
                  "Apple",
                  style: CustomTextStyles.titleMediumPrimarySemiBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLinkedIn(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 26.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 127.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 39.v,
                    width: 45.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.outlineBlack9006.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgDownloadRemovebgPreview37x37,
                      height: 37.adaptSize,
                      width: 37.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LinkedIn",
                        style: CustomTextStyles.titleMediumPrimarySemiBold,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "120 Jobs",
                        style: CustomTextStyles.titleSmallBluegray400Medium_1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 1.v),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 45.h,
                      decoration: AppDecoration.outlineBlack9006.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgDownloadRemovebgPreview24x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 9.v,
                              bottom: 6.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgDownloadRemovebgPreview41x55,
                            height: 41.v,
                            width: 55.h,
                            margin: EdgeInsets.only(left: 152.h),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pinterest",
                            style: CustomTextStyles.titleMediumPrimarySemiBold,
                          ),
                          SizedBox(
                            width: 253.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "100 Jobs",
                                  style: CustomTextStyles
                                      .titleSmallBluegray400Medium_1,
                                ),
                                Text(
                                  "120 Jobs",
                                  style: CustomTextStyles
                                      .titleSmallBluegray400Medium_1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle129,
              height: 39.v,
              width: 31.h,
              margin: EdgeInsets.only(top: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                top: 1.v,
                bottom: 19.v,
              ),
              child: Text(
                "ebay",
                style: CustomTextStyles.titleMediumPrimarySemiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSixtyEight(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 26.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: AppDecoration.outlinePrimaryContainer1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 12.h),
                child: IntrinsicWidth(
                  child: SizedBox(
                    width: 392.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.v),
                          child: Column(
                            children: [
                              Container(
                                width: 196.h,
                                margin: EdgeInsets.only(right: 6.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 48.v,
                                      width: 53.h,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.h,
                                        vertical: 11.v,
                                      ),
                                      decoration: AppDecoration
                                          .fillPrimaryContainer1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgDownloadRemovebgPreview26x39,
                                        height: 26.v,
                                        width: 39.h,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 4.v,
                                        bottom: 2.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Adidas",
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          SizedBox(height: 1.v),
                                          Text(
                                            "Product Designer",
                                            style: CustomTextStyles
                                                .titleMediumPrimarySemiBold_1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMapPin,
                                    height: 21.adaptSize,
                                    width: 21.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 3.v,
                                    ),
                                    child: Text(
                                      "Herzogenaurach, Germany",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 73.h,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.h,
                                        vertical: 6.v,
                                      ),
                                      decoration: AppDecoration
                                          .fillPrimaryContainer2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12,
                                      ),
                                      child: Text(
                                        "Freelance",
                                        style: CustomTextStyles
                                            .bodySmallPrimaryContainer_1,
                                      ),
                                    ),
                                    Container(
                                      width: 68.h,
                                      margin: EdgeInsets.only(left: 7.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.h,
                                        vertical: 6.v,
                                      ),
                                      decoration: AppDecoration
                                          .fillPrimaryContainer2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12,
                                      ),
                                      child: Text(
                                        "Full-Time",
                                        style: CustomTextStyles
                                            .bodySmallPrimaryContainer_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 46,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMdiHeart,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            top: 23.v,
                            bottom: 131.v,
                          ),
                        ),
                        Spacer(
                          flex: 53,
                        ),
                        SizedBox(
                          height: 178.v,
                          width: 290.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 178.v,
                                  width: 290.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(
                                      14.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.primaryContainer
                                          .withOpacity(0.21),
                                      width: 1.h,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            appTheme.black900.withOpacity(0.15),
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 37.v),
                                  child: Text(
                                    "Graphics Designer",
                                    style: CustomTextStyles
                                        .titleMediumPrimarySemiBold_1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 17.h),
              child: IntrinsicWidth(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 53.h,
                            padding: EdgeInsets.symmetric(vertical: 11.v),
                            decoration:
                                AppDecoration.fillSecondaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgDownloadRemovebgPreview24x27,
                                  height: 24.v,
                                  width: 27.h,
                                  margin: EdgeInsets.only(
                                    left: 13.h,
                                    bottom: 2.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMdiHeart,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 4.v,
                              bottom: 23.v,
                            ),
                            child: Text(
                              "McDonald’s",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMapPin,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "Chicago, Illinois, United States",
                              style: CustomTextStyles.bodyMediumBluegray400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 61.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 6.v,
                            ),
                            decoration:
                                AppDecoration.fillPrimaryContainer2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Text(
                              "Remote",
                              style:
                                  CustomTextStyles.bodySmallPrimaryContainer_1,
                            ),
                          ),
                          Container(
                            width: 68.h,
                            margin: EdgeInsets.only(left: 8.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 6.v,
                            ),
                            decoration:
                                AppDecoration.fillPrimaryContainer2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Text(
                              "Full-Time",
                              style:
                                  CustomTextStyles.bodySmallPrimaryContainer_1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.categoryDesignerPagePage;
      case BottomBarEnum.Uiwmessage:
        return "/";
      case BottomBarEnum.Uilbagalt:
        return "/";
      case BottomBarEnum.Settingsonprimarycontainer:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.categoryDesignerPagePage:
        return CategoryDesignerPagePage();
      default:
        return DefaultWidget();
    }
  }
}
