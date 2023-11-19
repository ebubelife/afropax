import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class Userschedule1ItemWidget extends StatelessWidget {
  Userschedule1ItemWidget({
    Key? key,
    this.onTapUserSchedule,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserSchedule;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserSchedule!.call();
      },
      child: SizedBox(
        height: 54.v,
        width: 395.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "11:00 AM",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse15,
                    height: 54.adaptSize,
                    width: 54.adaptSize,
                    radius: BorderRadius.circular(
                      27.h,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 4.v,
                        bottom: 5.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Elizabeth",
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 9.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text(
                                  "Hy",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              Container(
                                width: 18.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7,
                                ),
                                child: Text(
                                  "1",
                                  style: CustomTextStyles
                                      .labelLargeOnPrimaryContainerBold,
                                ),
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
          ],
        ),
      ),
    );
  }
}
