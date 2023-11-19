import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ProfessionalfeaturespageItemWidget extends StatelessWidget {
  ProfessionalfeaturespageItemWidget({
    Key? key,
    this.onTapStarterPlan,
  }) : super(
          key: key,
        );

  VoidCallback? onTapStarterPlan;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapStarterPlan!.call();
      },
      child: SizedBox(
        height: 175.v,
        width: 180.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 14.v),
                    SizedBox(
                      width: 126.h,
                      child: Text(
                        "Recommended daily budget",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelLargePrimaryContainer13,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "NGN1,835.00",
                      style: CustomTextStyles.titleSmallPrimaryMedium_1,
                    ),
                    SizedBox(height: 6.v),
                    SizedBox(
                      width: 129.h,
                      child: Text(
                        "Estimated applicants per month",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelLargePrimaryContainer13,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "44",
                      style: CustomTextStyles.titleSmallPrimaryMedium_1,
                    ),
                  ],
                ),
              ),
            ),
            CustomElevatedButton(
              height: 29.v,
              width: 122.h,
              text: "Starter Plan",
              buttonStyle: CustomButtonStyles.outlineBlackTL4,
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }
}
