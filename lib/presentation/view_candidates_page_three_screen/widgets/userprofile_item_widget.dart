import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: SizedBox(
        height: 145.v,
        width: 180.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 28.v,
                ),
                decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 12.v),
                    Text(
                      "Stylish Racoon",
                      style: CustomTextStyles.titleMediumPrimarySemiBold18,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Front-End Programmer",
                      style: CustomTextStyles.bodyMediumBluegray40013,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse68,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(
                30.h,
              ),
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }
}
