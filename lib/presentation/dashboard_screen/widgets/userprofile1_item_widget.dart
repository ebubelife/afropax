import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 4.v,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: CustomIconButton(
                height: 54.adaptSize,
                width: 54.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillErrorContainer,
                child: CustomImageView(
                  imagePath: ImageConstant.imgEosIconsJobOnprimarycontainer,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Designer Intern",
                    style: CustomTextStyles.titleMediumPrimarySemiBold18,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "On-SIte, Full-Time",
                    style: CustomTextStyles.titleSmallBluegray400Medium_1,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStreamlineInte,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(
                left: 85.h,
                top: 28.v,
                bottom: 16.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
