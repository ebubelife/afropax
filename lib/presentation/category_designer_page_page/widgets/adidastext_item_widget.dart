import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class AdidastextItemWidget extends StatelessWidget {
  const AdidastextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 135.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlinePrimaryContainer1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
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
              SizedBox(height: 12.v),
              Text(
                "Adidas",
                style: CustomTextStyles.titleLarge20,
              ),
              SizedBox(height: 3.v),
              Text(
                "10 Jobs open",
                style: CustomTextStyles.titleSmallPrimaryMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
