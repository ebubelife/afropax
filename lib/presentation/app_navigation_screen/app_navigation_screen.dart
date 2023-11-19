import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Splash Screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Splash Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Splash Screen Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Splash Screen Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Splash Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer (Welcome Page)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerWelcomePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer (Register Page)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerRegisterPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer (Login Page)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerLoginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer (Sign UpPage)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerSignUppageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer (Register Page) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerRegisterPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer (Login Page) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerLoginPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Dashboard Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Job Posts Page (1) ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jobPostsPage1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Job Posts Page (2) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jobPostsPage2OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Job Posts Page (2) Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jobPostsPage2TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Manage Jobs Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.manageJobsPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "professional features page",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.professionalFeaturesPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "pay with card Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.payWithCardPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Pay with transfer page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.payWithTransferPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Form transfer page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formTransferPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "iPhone 14 & 15 Pro Max - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1415ProMaxOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "My Jobs Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myJobsPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "View Candidates Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewCandidatesPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "View Candidates Page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewCandidatesPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "View Candidates Page Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewCandidatesPageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "View Candidates Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewCandidatesPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Candidates profile & Accept Page",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.candidatesProfileAcceptPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Message Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Message Page (Chatting)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageChattingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree:
                              "Message Page (Chatting with applicant)",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.messagePageChattingWithApplicantScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "call Page (Chatting)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.callPageChattingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Settings Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "profile Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profilePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "change password Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changePasswordPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Update Profile Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.updateProfilePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "J-S Create account page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "J-S Create account page Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.jSCreateAccountPageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "J-S Create account page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "J-S Create account page Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "J-S Create account page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "J-S Create account page Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "J-S login page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSLoginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Notification bar page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationBarPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Notification bar page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationBarPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree:
                              "Apply for Jobs One - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.applyForJobsOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Apply for Jobs Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.applyForJobsFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Search for jobs",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchForJobsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree:
                              "Category (Designer page) - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.categoryDesignerPageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Apply for Jobs - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.applyForJobsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Apply for Jobs Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.applyForJobsThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Activities",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.activitiesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Message Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Message Page (Chatting) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageChattingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree:
                              "Message Page (Chatting with employer) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .messagePageChattingWithEmployerOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree:
                              "Message Page (Chatting with employer)",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.messagePageChattingWithEmployerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer profile Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerProfilePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Employer profile Page (1)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerProfilePage1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "call Page (Chatting) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.callPageChattingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "call Page (Chatting) Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.callPageChattingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Settings Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "profile Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profilePageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "change password Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changePasswordPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          splashScreenThree: "Update Profile Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.updateProfilePageOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String splashScreenThree,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  splashScreenThree,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
