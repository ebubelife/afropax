import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          Container(
            height: 39.v,
            width: 45.h,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgDownloadRemovebgPreview29x29,
              height: 29.adaptSize,
              width: 29.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 108.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "Apple",
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ),
                      Container(
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        margin: EdgeInsets.only(
                          top: 7.v,
                          bottom: 6.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray400,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                      Text(
                        "Full time",
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                    ],
                  ),
                ),
                Text(
                  "UX Designer",
                  style: CustomTextStyles.titleSmallPrimary_1,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgHeart,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              right: 7.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }
}
