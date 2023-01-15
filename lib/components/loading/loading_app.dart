import 'package:final_project_job2023/views/widgets/authentications/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingApp extends StatefulWidget {
  const LoadingApp({super.key, required loading});

  @override
  State<LoadingApp> createState() => _LoadingAppState();
}

class _LoadingAppState extends State<LoadingApp> {
  bool isLoading = false;
  String errorText = '';
  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      () async {
        try {
          setState(() {
            isLoading = true;
          });
          await getCompanyData();
          setState(() {
            isLoading = false;
          });

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const SignInScreen(),
            ),
            (route) => false,
          );
        } catch (error) {
          setState(() {
            isLoading = false;
            errorText = error.toString();
          });
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading || errorText == ''
        ? const Scaffold(
            body: Center(
                child: SpinKitFadingCircle(
              size: 60,
              duration: Duration(seconds: 2),
              color: Colors.blue,
            )),
          )
        : errorText == ''
            ? const SpinKitFadingCircle(
                size: 60,
                duration: Duration(seconds: 2),
                color: Colors.blue,
              )
            : Text(errorText);
  }

  getCompanyData() {}
}
