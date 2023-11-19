import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oga_artisan/core/app_export.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:oga_artisan/widgets/app_bar/appbar_title.dart';
import 'package:oga_artisan/widgets/app_bar/custom_app_bar.dart';
import 'package:oga_artisan/widgets/custom_elevated_button.dart';
import 'package:oga_artisan/widgets/custom_input_field.dart';
import 'package:oga_artisan/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EmployerSignUppageScreen extends StatefulWidget {
  const EmployerSignUppageScreen({Key? key}) : super(key: key);

  @override
  _EmployerSignUppageScreenState createState() =>
      _EmployerSignUppageScreenState();
}

class _EmployerSignUppageScreenState extends State<EmployerSignUppageScreen> {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController officeTitleController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController companyNameController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    double screenWidth = MediaQuery.of(context).size.width;
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
                        "Full Name",
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 73, 73),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      CustomInputField(
                          hintText: "Full Name",
                          controller: fullNameController),
                      SizedBox(height: 20),
                      Text(
                        "Company Name",
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 73, 73),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      CustomInputField(
                          hintText: "Company Name",
                          controller: companyNameController),
                      SizedBox(height: 20),
                      Container(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              SizedBox(
                                  width: screenWidth * 0.4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Your Office Title",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 74, 73, 73),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      CustomInputField(
                                          hintText: "Office Title (E.g CEO)  ",
                                          controller: officeTitleController),
                                    ],
                                  )),
                              SizedBox(width: 8),
                              SizedBox(
                                  width: screenWidth * 0.45,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Phone",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 74, 73, 73),
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      CustomInputField(
                                          hintText: "Phone",
                                          controller: phoneController),
                                    ],
                                  ))
                            ],
                          )),
                      SizedBox(height: 20),
                      Container(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Country",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 74, 73, 73),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: screenWidth * 0.42,
                                      padding: EdgeInsets.only(
                                          left: 8.0,
                                          top: 12,
                                          bottom: 12,
                                          right: 8),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                2), // Shadow position - changes as needed
                                          ),
                                        ],
                                        color: Colors
                                            .white, // Set the background color of the container
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        "Country",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: const Color.fromARGB(
                                                255, 107, 107, 107)),
                                      ),
                                    ),
                                  ]),
                              SizedBox(width: 8),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "State",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 74, 73, 73),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: screenWidth * 0.42,
                                      padding: EdgeInsets.only(
                                          left: 8.0,
                                          top: 12,
                                          bottom: 12,
                                          right: 8),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                2), // Shadow position - changes as needed
                                          ),
                                        ],
                                        color: Colors
                                            .white, // Set the background color of the container
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        "State",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: const Color.fromARGB(
                                                255, 107, 107, 107)),
                                      ),
                                    ),
                                  ]),
                            ],
                          )),
                      SizedBox(height: 20),
                      Container(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "City",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 74, 73, 73),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      width: screenWidth * 0.42,
                                      padding: EdgeInsets.only(
                                          left: 8.0,
                                          top: 12,
                                          bottom: 12,
                                          right: 8),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                2), // Shadow position - changes as needed
                                          ),
                                        ],
                                        color: Colors
                                            .white, // Set the background color of the container
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        "City",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: const Color.fromARGB(
                                                255, 107, 107, 107)),
                                      ),
                                    ),
                                  ]),
                              SizedBox(width: 8),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Add Company Logo",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 74, 73, 73),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      width: screenWidth * 0.42,
                                      padding: EdgeInsets.only(
                                          left: 8.0,
                                          top: 12,
                                          bottom: 12,
                                          right: 8),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                2), // Shadow position - changes as needed
                                          ),
                                        ],
                                        color: Colors
                                            .white, // Set the background color of the container
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        "Upload Image",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: const Color.fromARGB(
                                                255, 107, 107, 107)),
                                      ),
                                    ),
                                  ]),
                            ],
                          )),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Checkbox(
                            value: agreedToTerms,
                            onChanged: (bool? value) {
                              setState(() {
                                agreedToTerms = value ?? false;
                              });
                            },
                            fillColor: MaterialStateColor.resolveWith(
                                (Set<MaterialState> states) {
                              if (!states.contains(MaterialState.selected)) {
                                return Colors
                                    .white; // Background color when checked
                              }
                              return Colors
                                  .orange; // Background color when unchecked
                            }),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'I have read and agree to the Terms and Conditions',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 68, 68, 68)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity, // Make button fill screen width
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your button press logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange, // Background color
                            onPrimary: Colors.white, // Text color

                            padding:
                                EdgeInsets.symmetric(vertical: 25), // Padding
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 14),
                          ), // Button text
                        ),
                      ),
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
        title: AppbarTitle(text: "Sign Up"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the employerRegisterPageOneScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.employerRegisterPageOneScreen);
  }
}
