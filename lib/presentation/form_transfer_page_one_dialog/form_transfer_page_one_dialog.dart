import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FormTransferPageOneDialog extends StatelessWidget {
  const FormTransferPageOneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 287.h,
      padding: EdgeInsets.symmetric(
        horizontal: 88.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 110.adaptSize,
            width: 110.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder55,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 44.v,
              width: 64.h,
              alignment: Alignment.centerLeft,
            ),
          ),
          SizedBox(height: 25.v),
          Text(
            "Successful",
            style:
                CustomTextStyles.titleMediumOpenSansBlack900SemiBold.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
