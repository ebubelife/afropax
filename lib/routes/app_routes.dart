import 'package:flutter/material.dart';
import 'package:oga_artisan/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:oga_artisan/presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import 'package:oga_artisan/presentation/splash_screen_four_screen/splash_screen_four_screen.dart';
import 'package:oga_artisan/presentation/splash_screen_five_screen/splash_screen_five_screen.dart';
import 'package:oga_artisan/presentation/splash_screen/splash_screen.dart';
import 'package:oga_artisan/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:oga_artisan/presentation/employer_welcome_page_screen/employer_welcome_page_screen.dart';
import 'package:oga_artisan/presentation/employer_register_page_screen/employer_register_page_screen.dart';
import 'package:oga_artisan/presentation/employer_login_page_screen/employer_login_page_screen.dart';
import 'package:oga_artisan/presentation/employer_sign_uppage_screen/employer_sign_uppage_screen.dart';
import 'package:oga_artisan/presentation/employer_register_page_one_screen/employer_register_page_one_screen.dart';
import 'package:oga_artisan/presentation/employer_login_page_one_screen/employer_login_page_one_screen.dart';
import 'package:oga_artisan/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'package:oga_artisan/presentation/job_posts_page_1_screen/job_posts_page_1_screen.dart';
import 'package:oga_artisan/presentation/job_posts_page_2_one_screen/job_posts_page_2_one_screen.dart';
import 'package:oga_artisan/presentation/job_posts_page_2_two_screen/job_posts_page_2_two_screen.dart';
import 'package:oga_artisan/presentation/manage_jobs_page_screen/manage_jobs_page_screen.dart';
import 'package:oga_artisan/presentation/professional_features_page_screen/professional_features_page_screen.dart';
import 'package:oga_artisan/presentation/pay_with_card_page_screen/pay_with_card_page_screen.dart';
import 'package:oga_artisan/presentation/pay_with_transfer_page_screen/pay_with_transfer_page_screen.dart';
import 'package:oga_artisan/presentation/form_transfer_page_screen/form_transfer_page_screen.dart';
import 'package:oga_artisan/presentation/iphone_14_15_pro_max_one_screen/iphone_14_15_pro_max_one_screen.dart';
import 'package:oga_artisan/presentation/my_jobs_page_screen/my_jobs_page_screen.dart';
import 'package:oga_artisan/presentation/view_candidates_page_screen/view_candidates_page_screen.dart';
import 'package:oga_artisan/presentation/view_candidates_page_two_screen/view_candidates_page_two_screen.dart';
import 'package:oga_artisan/presentation/view_candidates_page_three_screen/view_candidates_page_three_screen.dart';
import 'package:oga_artisan/presentation/view_candidates_page_one_screen/view_candidates_page_one_screen.dart';
import 'package:oga_artisan/presentation/candidates_profile_accept_page_screen/candidates_profile_accept_page_screen.dart';
import 'package:oga_artisan/presentation/message_page_screen/message_page_screen.dart';
import 'package:oga_artisan/presentation/message_page_chatting_screen/message_page_chatting_screen.dart';
import 'package:oga_artisan/presentation/message_page_chatting_with_applicant_screen/message_page_chatting_with_applicant_screen.dart';
import 'package:oga_artisan/presentation/call_page_chatting_screen/call_page_chatting_screen.dart';
import 'package:oga_artisan/presentation/settings_page_screen/settings_page_screen.dart';
import 'package:oga_artisan/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:oga_artisan/presentation/change_password_page_screen/change_password_page_screen.dart';
import 'package:oga_artisan/presentation/update_profile_page_screen/update_profile_page_screen.dart';
import 'package:oga_artisan/presentation/j_s_create_account_page_two_screen/j_s_create_account_page_two_screen.dart';
import 'package:oga_artisan/presentation/j_s_create_account_page_three_screen/j_s_create_account_page_three_screen.dart';
import 'package:oga_artisan/presentation/j_s_create_account_page_screen/j_s_create_account_page_screen.dart';
import 'package:oga_artisan/presentation/j_s_create_account_page_five_screen/j_s_create_account_page_five_screen.dart';
import 'package:oga_artisan/presentation/j_s_create_account_page_one_screen/j_s_create_account_page_one_screen.dart';
import 'package:oga_artisan/presentation/j_s_create_account_page_four_screen/j_s_create_account_page_four_screen.dart';
import 'package:oga_artisan/presentation/j_s_login_page_screen/j_s_login_page_screen.dart';
import 'package:oga_artisan/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:oga_artisan/presentation/notification_bar_page_screen/notification_bar_page_screen.dart';
import 'package:oga_artisan/presentation/notification_bar_page_one_screen/notification_bar_page_one_screen.dart';
import 'package:oga_artisan/presentation/apply_for_jobs_one_tab_container_screen/apply_for_jobs_one_tab_container_screen.dart';
import 'package:oga_artisan/presentation/apply_for_jobs_four_screen/apply_for_jobs_four_screen.dart';
import 'package:oga_artisan/presentation/search_for_jobs_screen/search_for_jobs_screen.dart';
import 'package:oga_artisan/presentation/category_designer_page_container_screen/category_designer_page_container_screen.dart';
import 'package:oga_artisan/presentation/apply_for_jobs_tab_container_screen/apply_for_jobs_tab_container_screen.dart';
import 'package:oga_artisan/presentation/apply_for_jobs_three_screen/apply_for_jobs_three_screen.dart';
import 'package:oga_artisan/presentation/activities_screen/activities_screen.dart';
import 'package:oga_artisan/presentation/message_page_one_screen/message_page_one_screen.dart';
import 'package:oga_artisan/presentation/message_page_chatting_one_screen/message_page_chatting_one_screen.dart';
import 'package:oga_artisan/presentation/message_page_chatting_with_employer_one_screen/message_page_chatting_with_employer_one_screen.dart';
import 'package:oga_artisan/presentation/message_page_chatting_with_employer_screen/message_page_chatting_with_employer_screen.dart';
import 'package:oga_artisan/presentation/employer_profile_page_screen/employer_profile_page_screen.dart';
import 'package:oga_artisan/presentation/employer_profile_page_1_screen/employer_profile_page_1_screen.dart';
import 'package:oga_artisan/presentation/call_page_chatting_one_screen/call_page_chatting_one_screen.dart';
import 'package:oga_artisan/presentation/call_page_chatting_two_screen/call_page_chatting_two_screen.dart';
import 'package:oga_artisan/presentation/settings_page_one_screen/settings_page_one_screen.dart';
import 'package:oga_artisan/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:oga_artisan/presentation/change_password_page_one_screen/change_password_page_one_screen.dart';
import 'package:oga_artisan/presentation/update_profile_page_one_screen/update_profile_page_one_screen.dart';
import 'package:oga_artisan/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String splashScreenFourScreen = '/splash_screen_four_screen';

  static const String splashScreenFiveScreen = '/splash_screen_five_screen';

  static const String splashScreen = '/splash_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String employerWelcomePageScreen =
      '/employer_welcome_page_screen';

  static const String employerRegisterPageScreen =
      '/employer_register_page_screen';

  static const String employerLoginPageScreen = '/employer_login_page_screen';

  static const String employerSignUppageScreen = '/employer_sign_uppage_screen';

  static const String employerRegisterPageOneScreen =
      '/employer_register_page_one_screen';

  static const String employerLoginPageOneScreen =
      '/employer_login_page_one_screen';

  static const String dashboardPageScreen = '/dashboard_page_screen';

  static const String jobPostsPage1Screen = '/job_posts_page_1_screen';

  static const String jobPostsPage2OneScreen = '/job_posts_page_2_one_screen';

  static const String jobPostsPage2TwoScreen = '/job_posts_page_2_two_screen';

  static const String manageJobsPageScreen = '/manage_jobs_page_screen';

  static const String professionalFeaturesPageScreen =
      '/professional_features_page_screen';

  static const String payWithCardPageScreen = '/pay_with_card_page_screen';

  static const String payWithTransferPageScreen =
      '/pay_with_transfer_page_screen';

  static const String formTransferPageScreen = '/form_transfer_page_screen';

  static const String iphone1415ProMaxOneScreen =
      '/iphone_14_15_pro_max_one_screen';

  static const String myJobsPageScreen = '/my_jobs_page_screen';

  static const String viewCandidatesPageScreen = '/view_candidates_page_screen';

  static const String viewCandidatesPageTwoScreen =
      '/view_candidates_page_two_screen';

  static const String viewCandidatesPageThreeScreen =
      '/view_candidates_page_three_screen';

  static const String viewCandidatesPageOneScreen =
      '/view_candidates_page_one_screen';

  static const String candidatesProfileAcceptPageScreen =
      '/candidates_profile_accept_page_screen';

  static const String messagePageScreen = '/message_page_screen';

  static const String messagePageChattingScreen =
      '/message_page_chatting_screen';

  static const String messagePageChattingWithApplicantScreen =
      '/message_page_chatting_with_applicant_screen';

  static const String callPageChattingScreen = '/call_page_chatting_screen';

  static const String settingsPageScreen = '/settings_page_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String changePasswordPageScreen = '/change_password_page_screen';

  static const String updateProfilePageScreen = '/update_profile_page_screen';

  static const String jSCreateAccountPageTwoScreen =
      '/j_s_create_account_page_two_screen';

  static const String jSCreateAccountPageThreeScreen =
      '/j_s_create_account_page_three_screen';

  static const String jSCreateAccountPageScreen =
      '/j_s_create_account_page_screen';

  static const String jSCreateAccountPageFiveScreen =
      '/j_s_create_account_page_five_screen';

  static const String jSCreateAccountPageOneScreen =
      '/j_s_create_account_page_one_screen';

  static const String jSCreateAccountPageFourScreen =
      '/j_s_create_account_page_four_screen';

  static const String jSLoginPageScreen = '/j_s_login_page_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String notificationBarPageScreen =
      '/notification_bar_page_screen';

  static const String notificationBarPageOneScreen =
      '/notification_bar_page_one_screen';

  static const String applyForJobsFivePage = '/apply_for_jobs_five_page';

  static const String applyForJobsOnePage = '/apply_for_jobs_one_page';

  static const String applyForJobsOneTabContainerScreen =
      '/apply_for_jobs_one_tab_container_screen';

  static const String applyForJobsFourScreen = '/apply_for_jobs_four_screen';

  static const String searchForJobsScreen = '/search_for_jobs_screen';

  static const String categoryDesignerPagePage = '/category_designer_page_page';

  static const String categoryDesignerPageContainerScreen =
      '/category_designer_page_container_screen';

  static const String applyForJobsTwoPage = '/apply_for_jobs_two_page';

  static const String applyForJobsPage = '/apply_for_jobs_page';

  static const String applyForJobsTabContainerScreen =
      '/apply_for_jobs_tab_container_screen';

  static const String applyForJobsThreeScreen = '/apply_for_jobs_three_screen';

  static const String activitiesScreen = '/activities_screen';

  static const String messagePageOneScreen = '/message_page_one_screen';

  static const String messagePageChattingOneScreen =
      '/message_page_chatting_one_screen';

  static const String messagePageChattingWithEmployerOneScreen =
      '/message_page_chatting_with_employer_one_screen';

  static const String messagePageChattingWithEmployerScreen =
      '/message_page_chatting_with_employer_screen';

  static const String employerProfilePageScreen =
      '/employer_profile_page_screen';

  static const String employerProfilePage1Screen =
      '/employer_profile_page_1_screen';

  static const String callPageChattingOneScreen =
      '/call_page_chatting_one_screen';

  static const String callPageChattingTwoScreen =
      '/call_page_chatting_two_screen';

  static const String settingsPageOneScreen = '/settings_page_one_screen';

  static const String profilePageOneScreen = '/profile_page_one_screen';

  static const String changePasswordPageOneScreen =
      '/change_password_page_one_screen';

  static const String updateProfilePageOneScreen =
      '/update_profile_page_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    splashScreenFourScreen: (context) => SplashScreenFourScreen(),
    splashScreenFiveScreen: (context) => SplashScreenFiveScreen(),
    splashScreen: (context) => SplashScreen(),
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    employerWelcomePageScreen: (context) => EmployerWelcomePageScreen(),
    employerRegisterPageScreen: (context) => EmployerRegisterPageScreen(),
    employerLoginPageScreen: (context) => EmployerLoginPageScreen(),
    employerSignUppageScreen: (context) => EmployerSignUppageScreen(),
    employerRegisterPageOneScreen: (context) => EmployerRegisterPageOneScreen(),
    employerLoginPageOneScreen: (context) => EmployerLoginPageOneScreen(),
    dashboardPageScreen: (context) => DashboardPageScreen(),
    jobPostsPage1Screen: (context) => JobPostsPage1Screen(),
    jobPostsPage2OneScreen: (context) => JobPostsPage2OneScreen(),
    jobPostsPage2TwoScreen: (context) => JobPostsPage2TwoScreen(),
    manageJobsPageScreen: (context) => ManageJobsPageScreen(),
    professionalFeaturesPageScreen: (context) =>
        ProfessionalFeaturesPageScreen(),
    payWithCardPageScreen: (context) => PayWithCardPageScreen(),
    payWithTransferPageScreen: (context) => PayWithTransferPageScreen(),
    formTransferPageScreen: (context) => FormTransferPageScreen(),
    iphone1415ProMaxOneScreen: (context) => Iphone1415ProMaxOneScreen(),
    myJobsPageScreen: (context) => MyJobsPageScreen(),
    viewCandidatesPageScreen: (context) => ViewCandidatesPageScreen(),
    viewCandidatesPageTwoScreen: (context) => ViewCandidatesPageTwoScreen(),
    viewCandidatesPageThreeScreen: (context) => ViewCandidatesPageThreeScreen(),
    viewCandidatesPageOneScreen: (context) => ViewCandidatesPageOneScreen(),
    candidatesProfileAcceptPageScreen: (context) =>
        CandidatesProfileAcceptPageScreen(),
    messagePageScreen: (context) => MessagePageScreen(),
    messagePageChattingScreen: (context) => MessagePageChattingScreen(),
    messagePageChattingWithApplicantScreen: (context) =>
        MessagePageChattingWithApplicantScreen(),
    callPageChattingScreen: (context) => CallPageChattingScreen(),
    settingsPageScreen: (context) => SettingsPageScreen(),
    profilePageScreen: (context) => ProfilePageScreen(),
    changePasswordPageScreen: (context) => ChangePasswordPageScreen(),
    updateProfilePageScreen: (context) => UpdateProfilePageScreen(),
    jSCreateAccountPageTwoScreen: (context) => JSCreateAccountPageTwoScreen(),
    jSCreateAccountPageThreeScreen: (context) =>
        JSCreateAccountPageThreeScreen(),
    jSCreateAccountPageScreen: (context) => JSCreateAccountPageScreen(),
    jSCreateAccountPageFiveScreen: (context) => JSCreateAccountPageFiveScreen(),
    jSCreateAccountPageOneScreen: (context) => JSCreateAccountPageOneScreen(),
    jSCreateAccountPageFourScreen: (context) => JSCreateAccountPageFourScreen(),
    jSLoginPageScreen: (context) => JSLoginPageScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    notificationBarPageScreen: (context) => NotificationBarPageScreen(),
    notificationBarPageOneScreen: (context) => NotificationBarPageOneScreen(),
    applyForJobsOneTabContainerScreen: (context) =>
        ApplyForJobsOneTabContainerScreen(),
    applyForJobsFourScreen: (context) => ApplyForJobsFourScreen(),
    searchForJobsScreen: (context) => SearchForJobsScreen(),
    categoryDesignerPageContainerScreen: (context) =>
        CategoryDesignerPageContainerScreen(),
    applyForJobsTabContainerScreen: (context) =>
        ApplyForJobsTabContainerScreen(),
    applyForJobsThreeScreen: (context) => ApplyForJobsThreeScreen(),
    activitiesScreen: (context) => ActivitiesScreen(),
    messagePageOneScreen: (context) => MessagePageOneScreen(),
    messagePageChattingOneScreen: (context) => MessagePageChattingOneScreen(),
    messagePageChattingWithEmployerOneScreen: (context) =>
        MessagePageChattingWithEmployerOneScreen(),
    messagePageChattingWithEmployerScreen: (context) =>
        MessagePageChattingWithEmployerScreen(),
    employerProfilePageScreen: (context) => EmployerProfilePageScreen(),
    employerProfilePage1Screen: (context) => EmployerProfilePage1Screen(),
    callPageChattingOneScreen: (context) => CallPageChattingOneScreen(),
    callPageChattingTwoScreen: (context) => CallPageChattingTwoScreen(),
    settingsPageOneScreen: (context) => SettingsPageOneScreen(),
    profilePageOneScreen: (context) => ProfilePageOneScreen(),
    changePasswordPageOneScreen: (context) => ChangePasswordPageOneScreen(),
    updateProfilePageOneScreen: (context) => UpdateProfilePageOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
