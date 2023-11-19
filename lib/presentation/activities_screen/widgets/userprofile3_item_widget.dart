import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 48.v,
                  width: 53.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillPrimaryContainer1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgDownloadRemovebgPreview26x39,
                    height: 26.v,
                    width: 39.h,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adidas",
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "Product Designer",
                        style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 70.h,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 19.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillPrimaryContainer3.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Text(
                    "Applied",
                    style: CustomTextStyles.titleSmallMedium_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
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
                    style: CustomTextStyles.bodyMediumBluegray400,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    "Oct 23, 2020",
                    style: CustomTextStyles.bodyMediumBluegray400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
