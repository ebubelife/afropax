import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';class PaymentMethodPageDialog extends StatelessWidget {const PaymentMethodPageDialog({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: 310.h, padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 32.v), decoration: AppDecoration.fillGray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder33), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("Choose Payment Method".toUpperCase(), style: CustomTextStyles.titleMediumOpenSans), SizedBox(height: 26.v), CustomElevatedButton(height: 44.v, text: "Pay with Card", margin: EdgeInsets.symmetric(horizontal: 32.h), buttonTextStyle: CustomTextStyles.titleMediumOpenSansOnPrimaryContainerBold, onPressed: () {onTapPayWithCard(context);}), SizedBox(height: 18.v), CustomElevatedButton(height: 44.v, width: 145.h, text: "Transfer", buttonTextStyle: CustomTextStyles.titleMediumOpenSansOnPrimaryContainerBold, onPressed: () {onTapTransfer(context);}), SizedBox(height: 36.v)])); } 
/// Navigates to the payWithCardPageScreen when the action is triggered.
onTapPayWithCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.payWithCardPageScreen); } 
/// Navigates to the payWithTransferPageScreen when the action is triggered.
onTapTransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.payWithTransferPageScreen); } 
 }
