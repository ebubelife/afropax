import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class JobpostingItemWidget extends StatelessWidget {
  const JobpostingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 1.v,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 6.adaptSize,
              width: 6.adaptSize,
              margin: EdgeInsets.only(
                top: 29.v,
                bottom: 55.v,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle180,
              height: 49.v,
              width: 54.h,
              margin: EdgeInsets.only(
                left: 5.h,
                top: 7.v,
                bottom: 34.v,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Junior product designer",
                              style: CustomTextStyles.titleMediumSemiBold,
                            ),
                            TextSpan(
                              text: ": 1\nopportunity in ",
                              style: theme.textTheme.titleMedium,
                            ),
                            TextSpan(
                              text: "Califonia",
                              style: CustomTextStyles.titleMediumSemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 24.v),
                          child: Text(
                            "4 hours ago",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        CustomElevatedButton(
                          width: 86.h,
                          text: "View Job",
                          margin: EdgeInsets.only(top: 5.v),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
