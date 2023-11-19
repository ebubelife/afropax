import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_title.dart';
import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';
import 'package:oga_artisan/widgets/custom_input_field.dart';
import 'package:oga_artisan/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EmployerLoginPageOneScreen extends StatelessWidget {
  EmployerLoginPageOneScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                margin: EdgeInsets.only(top: 28),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 73, 73),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      CustomInputField(
                          hintText: "Email", controller: emailController),
                      SizedBox(height: 20),
                      Text(
                        "Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 73, 73),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      CustomInputField(
                          hintText: "Password", controller: emailController),
                      SizedBox(height: 10),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity, // Make button fill screen width
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardPageScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange, // Background color
                            onPrimary: Colors.white, // Text color

                            padding:
                                EdgeInsets.symmetric(vertical: 25), // Padding
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 14),
                          ), // Button text
                        ),
                      ),
                      Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "Create Account",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 68, 68, 68),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ))
                    ],
                  ),
                ))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 73.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, top: 1.v, bottom: 1.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Login"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the dashboardPageScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardPageScreen);
  }
}
