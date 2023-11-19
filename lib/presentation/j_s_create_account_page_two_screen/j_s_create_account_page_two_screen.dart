import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:oga_artisan/core/app_export.dart';import 'package:oga_artisan/widgets/custom_elevated_button.dart';import 'package:oga_artisan/widgets/custom_text_form_field.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class JSCreateAccountPageTwoScreen extends StatelessWidget {JSCreateAccountPageTwoScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController emailController1 = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 76.v), Expanded(child: SingleChildScrollView(child: Column(children: [Container(width: 305.h, margin: EdgeInsets.only(left: 60.h, right: 64.h), child: Text("Create your free profile and let the jobs find you", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumOnPrimaryContainer)), SizedBox(height: 17.v), SizedBox(height: 10.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 6, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.onPrimaryContainer.withOpacity(1), dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.31), dotHeight: 10.v, dotWidth: 10.h))), SizedBox(height: 21.v), Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgVectorBlueGray40057x57, height: 57.adaptSize, width: 57.adaptSize, alignment: Alignment.center), SizedBox(height: 9.v), _buildUploadPicture(context), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Personal Data", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 98.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Full Name", style: CustomTextStyles.titleMediumBluegray400SemiBold), Text("Last Name", style: CustomTextStyles.titleMediumBluegray400SemiBold)])), SizedBox(height: 8.v), _buildFullName1(context), SizedBox(height: 29.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Email Address (optional)", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 7.v), _buildEmail(context), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Confirm Email Address", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 9.v), _buildEmail1(context), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 3.h, right: 107.h), child: Row(children: [Text("Phone Number", style: CustomTextStyles.titleMediumBluegray400SemiBold), Padding(padding: EdgeInsets.only(left: 85.h), child: Text("Password", style: CustomTextStyles.titleMediumBluegray400SemiBold))])), SizedBox(height: 8.v), _buildPhoneNumber1(context), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Confirm Password", style: CustomTextStyles.titleMediumBluegray400SemiBold)), SizedBox(height: 8.v), _buildConfirmpassword1(context), SizedBox(height: 30.v), Align(alignment: Alignment.center, child: Text("Already Registered? Log In Now", style: CustomTextStyles.bodySmallPrimary)), SizedBox(height: 5.v)]))])))]))))); } 
/// Section Widget
Widget _buildUploadPicture(BuildContext context) { return CustomElevatedButton(height: 38.v, width: 136.h, text: "Upload Picture", buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer, alignment: Alignment.center); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 11.h), child: CustomTextFormField(controller: fullNameController, hintText: "Enter Firstname", hintStyle: theme.textTheme.bodyMedium!))); } 
/// Section Widget
Widget _buildLastName(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 11.h), child: CustomTextFormField(controller: lastNameController, hintText: "Enter Lastname", hintStyle: theme.textTheme.bodyMedium!))); } 
/// Section Widget
Widget _buildFullName1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildFullName(context), _buildLastName(context)])); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: CustomTextFormField(controller: emailController, hintText: "someone@example.com", hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.emailAddress)); } 
/// Section Widget
Widget _buildEmail1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: CustomTextFormField(controller: emailController1, hintText: "Re-enter someone@example.com", hintStyle: theme.textTheme.bodyMedium!)); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 10.h), child: CustomTextFormField(controller: phoneNumberController, hintText: "Enter phone number", hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.phone))); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: passwordController, hintText: "Enter password", hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.visiblePassword, obscureText: true))); } 
/// Section Widget
Widget _buildPhoneNumber1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildPhoneNumber(context), _buildPassword(context)])); } 
/// Section Widget
Widget _buildConfirmpassword(BuildContext context) { return Padding(padding: EdgeInsets.only(top: 1.v), child: CustomTextFormField(width: 180.h, controller: confirmpasswordController, hintText: "Re-enter password", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true)); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(height: 39.v, width: 90.h, text: "Next...", margin: EdgeInsets.only(bottom: 16.v), buttonStyle: CustomButtonStyles.fillPrimaryTL11, buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainer20, onPressed: () {onTapNext(context);}); } 
/// Section Widget
Widget _buildConfirmpassword1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildConfirmpassword(context), _buildNext(context)])); } 
/// Navigates to the jSCreateAccountPageThreeScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.jSCreateAccountPageThreeScreen); } 
 }
