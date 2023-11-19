import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class DashboardpageItemWidget extends StatelessWidget {
  const DashboardpageItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 1.h,
          vertical: 2.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDownloadRemovebgPreview47x47,
                  height: 47.adaptSize,
                  width: 47.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 6.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter Developer",
                        style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                      ),
                      Text(
                        "Twitter",
                        style: CustomTextStyles.titleSmallPrimaryContainer,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 98.h,
                    top: 26.v,
                  ),
                  child: Text(
                    "2500/Mo",
                    style: CustomTextStyles.titleSmallPrimaryBold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMapPinPrimarycontainer,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Cipayung",
                      style: CustomTextStyles.titleSmallPrimaryContainerMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBriefcase,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      bottom: 1.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "Internship",
                      style: CustomTextStyles.titleSmallPrimaryContainerMedium,
                    ),
                  ),
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      left: 121.h,
                      top: 5.v,
                      bottom: 6.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "2d",
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
          ],
        ),
      ),
    );
  }
}
