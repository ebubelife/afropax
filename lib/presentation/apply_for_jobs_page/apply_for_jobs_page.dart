import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';class ApplyForJobsPage extends StatefulWidget {const ApplyForJobsPage({Key? key}) : super(key: key);

@override ApplyForJobsPageState createState() =>  ApplyForJobsPageState();

 }
class ApplyForJobsPageState extends State<ApplyForJobsPage> with  AutomaticKeepAliveClientMixin<ApplyForJobsPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimaryContainer, child: Column(children: [SizedBox(height: 40.v), _buildApplyNow(context)])))); } 
/// Section Widget
Widget _buildApplyNow(BuildContext context) { return Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 25.h, right: 38.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Description", style: CustomTextStyles.titleMediumSemiBold18), SizedBox(height: 9.v), SizedBox(width: 208.h, child: Text("Company: Peak Infotech Systems Location: Califonia Job Type: Remote Department: Design", maxLines: 4, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLarge13)), SizedBox(height: 19.v), Text("Benefits", style: CustomTextStyles.titleMediumSemiBold18), SizedBox(height: 11.v), Container(width: 357.h, margin: EdgeInsets.only(left: 9.h), child: Text("Competitive salary and benefits package\nOpportunity to work on cutting-edge digital products\nCollaborative and supportive work environment\nOpportunities for professional development and growth", maxLines: 4, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLarge13)), SizedBox(height: 111.v), Padding(padding: EdgeInsets.only(right: 11.h), child: Row(children: [Expanded(child: CustomElevatedButton(height: 61.v, text: "Apply Now", buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainerBold18, onPressed: () {onTapApplyNow(context);})), GestureDetector(onTap: () {onTapMessageSquare(context);}, child: Container(height: 61.v, width: 66.h, margin: EdgeInsets.only(left: 20.h), padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 17.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18), child: CustomImageView(imagePath: ImageConstant.imgMessageSquare, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.bottomCenter)))]))]))); } 
/// Navigates to the applyForJobsThreeScreen when the action is triggered.
onTapApplyNow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.applyForJobsThreeScreen); } 
/// Navigates to the messagePageChattingWithEmployerScreen when the action is triggered.
onTapMessageSquare(BuildContext context) { Navigator.pushNamed(context, AppRoutes.messagePageChattingWithEmployerScreen); } 
 }
