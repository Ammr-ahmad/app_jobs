import 'package:final_project_job2023/main_jobs.dart';
import 'package:final_project_job2023/pages/company_body/gridview_company.dart';
import 'package:final_project_job2023/splash_screen.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_in_screen.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    SplashScreen.routeName: (context) => const SplashScreen(),
    SignInScreen.routeName: (context) => const SignInScreen(),
    SignUpScreen.routeName: (context) => const SignUpScreen(),
    CompanyViewData.routeName: (context) => const CompanyViewData(),
    MyRunApp.routeName: (context) => const MyRunApp()
  };
}
