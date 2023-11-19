import 'package:flutter/material.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/presentation/apply_for_jobs_five_page/apply_for_jobs_five_page.dart';import 'package:oga_artisan/presentation/apply_for_jobs_one_page/apply_for_jobs_one_page.dart';class ApplyForJobsOneTabContainerScreen extends StatefulWidget {const ApplyForJobsOneTabContainerScreen({Key? key}) : super(key: key);

@override ApplyForJobsOneTabContainerScreenState createState() =>  ApplyForJobsOneTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class ApplyForJobsOneTabContainerScreenState extends State<ApplyForJobsOneTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildArrowLeft(context), SizedBox(height: 15.v), Text("Sr. Product Designer", style: theme.textTheme.headlineSmall), SizedBox(height: 3.v), RichText(text: TextSpan(children: [TextSpan(text: "Remote. ", style: CustomTextStyles.titleMediumBluegray40018_1), TextSpan(text: "Internship", style: CustomTextStyles.titleMediumPrimary18), TextSpan(text: " in Califonia", style: CustomTextStyles.titleMediumBluegray40018_1)]), textAlign: TextAlign.left), SizedBox(height: 37.v), Container(height: 45.v, width: 250.h, margin: EdgeInsets.only(right: 77.h), decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(7.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primaryContainer.withOpacity(1), labelStyle: TextStyle(fontSize: 17.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.blueGray400, unselectedLabelStyle: TextStyle(fontSize: 17.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w600), indicatorPadding: EdgeInsets.all(6.5.h), indicator: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(6.h)), tabs: [Tab(child: Text("Overview")), Tab(child: Text("Further Details"))])), SizedBox(height: 494.v, child: TabBarView(controller: tabviewController, children: [ApplyForJobsFivePage(), ApplyForJobsOnePage()]))])))); } 
/// Section Widget
Widget _buildArrowLeft(BuildContext context) { return SizedBox(height: 284.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: SizedBox(height: 237.v, width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgRectangle115, height: 237.v, width: 430.h, radius: BorderRadius.vertical(bottom: Radius.circular(41.h)), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 19.h, top: 50.v), onTap: () {onTapImgArrowLeft(context);})]))), Align(alignment: Alignment.bottomCenter, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.only(bottom: 1.v), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder46), child: Container(height: 93.adaptSize, width: 93.adaptSize, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder46), child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.center, child: Container(height: 80.adaptSize, width: 80.adaptSize, padding: EdgeInsets.all(21.h), decoration: AppDecoration.fillBlue.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: CustomImageView(imagePath: ImageConstant.imgEosIconsJob, height: 38.adaptSize, width: 38.adaptSize, alignment: Alignment.center))), Align(alignment: Alignment.bottomRight, child: Container(height: 26.adaptSize, width: 26.adaptSize, margin: EdgeInsets.only(right: 2.h), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(13.h))))])))), CustomImageView(imagePath: ImageConstant.imgBlueVerifiedT, height: 36.adaptSize, width: 36.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 172.h))])); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }