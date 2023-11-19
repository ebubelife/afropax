import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_switch.dart';class ApplyForJobsFivePage extends StatefulWidget {const ApplyForJobsFivePage({Key? key}) : super(key: key);

@override ApplyForJobsFivePageState createState() =>  ApplyForJobsFivePageState();

 }

// ignore_for_file: must_be_immutable
class ApplyForJobsFivePageState extends State<ApplyForJobsFivePage> with  AutomaticKeepAliveClientMixin<ApplyForJobsFivePage> {bool isSelectedSwitch = false;

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimaryContainer, child: Column(children: [SizedBox(height: 30.v), _buildApplyNow(context)])))); } 
/// Section Widget
Widget _buildApplyNow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 24.h, right: 27.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Overview", style: CustomTextStyles.titleMediumSemiBold18)), SizedBox(height: 8.v), Container(width: 378.h, margin: EdgeInsets.only(left: 1.h), child: Text("We are looking for a talented and experienced UI/UX designer to join our team. As a UI/UX designer, you will be responsible for creating user interfaces and user experiences that are both visually appealing and easy to use. You will work closely with product managers, developers, and other stakeholders to design and implement digital products that meet the needs of our users.", maxLines: 7, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLarge13)), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("What you’ll do", style: CustomTextStyles.titleMediumSemiBold18)), SizedBox(height: 12.v), Align(alignment: Alignment.center, child: Container(width: 356.h, margin: EdgeInsets.only(left: 10.h, right: 12.h), child: Text("Conducting user research to understand the needs and goals of the target audience\nDesigning wireframes and prototypes to illustrate the user flow and functionality of a product", maxLines: 4, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLarge13))), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(right: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Set alert for similar jobs", style: CustomTextStyles.titleMediumBlack900), SizedBox(height: 5.v), Text("Sr. Product Designer, Califonia", style: CustomTextStyles.labelLarge13)]), CustomSwitch(margin: EdgeInsets.only(top: 11.v, bottom: 3.v), value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})])), SizedBox(height: 32.v), Padding(padding: EdgeInsets.only(left: 1.h, right: 22.h), child: Row(children: [Expanded(child: CustomElevatedButton(height: 61.v, text: "Apply Now", buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainerBold18, onPressed: () {onTapApplyNow(context);})), GestureDetector(onTap: () {onTapMessageSquare(context);}, child: Container(height: 61.v, width: 66.h, margin: EdgeInsets.only(left: 20.h), padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 17.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: CustomImageView(imagePath: ImageConstant.imgMessageSquare, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.bottomCenter)))]))])); } 
/// Navigates to the applyForJobsFourScreen when the action is triggered.
onTapApplyNow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.applyForJobsFourScreen); } 
/// Navigates to the messagePageChattingWithEmployerOneScreen when the action is triggered.
onTapMessageSquare(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagePageChattingWithEmployerOneScreen); } 
 }
