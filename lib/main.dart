import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:oga_artisan/theme/theme_helper.dart';
import 'package:oga_artisan/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'oga_artisan',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.employerWelcomePageScreen,
      routes: AppRoutes.routes,
    );
  }
}
