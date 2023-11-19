import '../professional_features_page_screen/widgets/professionalfeaturespage_item_widget.dart';import 'package:flutter/material.dart';import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/app_bar/appbar_leading_image.dart';import 'package:oga_artisan/widgets/app_bar/appbar_trailing_image.dart';import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';import 'package:oga_artisan/widgets/custom_search_view.dart';import 'package:oga_artisan/presentation/payment_method_page_dialog/payment_method_page_dialog.dart';
// ignore_for_file: must_be_immutable
class ProfessionalFeaturesPageScreen extends StatelessWidget {ProfessionalFeaturesPageScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "Good Morning ", style: theme.textTheme.titleLarge), TextSpan(text: "Lucy", style: CustomTextStyles.titleLargePrimary_1)]), textAlign: TextAlign.left), SizedBox(height: 24.v), CustomSearchView(controller: searchController, hintText: "Search"), SizedBox(height: 34.v), Text("Professional Features Plans", style: CustomTextStyles.titleMediumSemiBold18), SizedBox(height: 19.v), _buildProfessionalfeaturespage(context), SizedBox(height: 19.v), Container(width: 355.h, margin: EdgeInsets.only(right: 25.h), child: RichText(text: TextSpan(children: [TextSpan(text: "When you promote your job post, it will appear in ", style: CustomTextStyles.bodyMediumPrimaryContainer13), TextSpan(text: "prominent placements", style: CustomTextStyles.labelLargePrimarySemiBold), TextSpan(text: " in front of people who ", style: CustomTextStyles.bodyMediumPrimaryContainer13), TextSpan(text: "match your job criteria.", style: CustomTextStyles.labelLargePrimarySemiBold)]), textAlign: TextAlign.left)), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 54.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgJamMenuIcon, margin: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgGroup119, margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v))]); } 
/// Section Widget
Widget _buildProfessionalfeaturespage(BuildContext context) { return StaggeredGridView.countBuilder(shrinkWrap: true, primary: false, crossAxisCount: 4, crossAxisSpacing: 20.h, mainAxisSpacing: 20.h, staggeredTileBuilder: (index) {return StaggeredTile.fit(2);}, itemCount: 4, itemBuilder: (context, index) {return ProfessionalfeaturespageItemWidget(onTapStarterPlan: () {onTapStarterPlan(context);});}); } 

/// Displays a dialog with the [PaymentMethodPageDialog] content.
onTapStarterPlan(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: PaymentMethodPageDialog(),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }