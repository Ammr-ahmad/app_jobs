import 'package:final_project_job2023/components/bottom_navbar/bottom_nav_main.dart';
import 'package:final_project_job2023/main_jobs.dart';
import 'package:final_project_job2023/pages/company_body/gridview_company.dart';
import 'package:final_project_job2023/pages/jobseekers_body/body_jobseekers_own.dart';
import 'package:final_project_job2023/splash_screen.dart';
import 'package:final_project_job2023/views/widgets/authentications/forget_pass_screen.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_in_screen.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    MyRunApp.routeName: (context) => const MyRunApp(),
    BodyOwn.routeName: (context) => const BodyOwn(),
    SplashScreen.routeName: (context) => const SplashScreen(),
    SignInScreen.routeName: (context) => const SignInScreen(),
    SignUp.routeName: (context) => const SignUp(),
    BottomNavigationBarPages.routeName: (context) =>
        const BottomNavigationBarPages(),
    CompanyViewData.routeName: (context) => const CompanyViewData(),
    ForgotPassScreen.routeName: (context) => const ForgotPassScreen(),
  };
}
