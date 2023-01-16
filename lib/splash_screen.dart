import 'dart:async';
import 'package:final_project_job2023/main_jobs.dart';
import 'package:final_project_job2023/pages/prefrences/app_pref.dart';
import 'package:final_project_job2023/pages/prefrences/helper_cash.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'Splash Screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      if (HelperSave.prefs!.getString("token") != null) {
        ApplicationPrefrencesData.getUserDataFromShared();
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const MyRunApp();
        }));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) {
          return const SignInScreen();
        })));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF73AEF5),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [Color(0xFF398AE5), Color(0xFF61A4F1)])),
        child: Column(
          children: const [
            SizedBox(
              height: 160,
            ),
            Image(
              image: AssetImage(
                'assets/images/download (1).jpg',
              ),
              height: 250.0,
              width: 250.0,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'WelCome App JobSeekers ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 60,
            ),
            SpinKitFadingCircle(
              size: 60,
              duration: Duration(seconds: 2),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
