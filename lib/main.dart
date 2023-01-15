import 'package:final_project_job2023/controllers/api_provider_list.dart';
import 'package:final_project_job2023/main_jobs.dart';
import 'package:final_project_job2023/routes/app_routes.dart';
import 'package:final_project_job2023/splash_screen.dart';
import 'package:final_project_job2023/pages/prefrences/cash_helper.dart';
import 'package:final_project_job2023/utils/languages/app_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await CachHelper.init();
  runApp(const JobSeekers());
}

class JobSeekers extends StatelessWidget {
  const JobSeekers({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providerListAll,
        child: MaterialApp(
            home: const MyRunApp(),
            onGenerateTitle: (context) => AppKey.appName,
            debugShowCheckedModeBanner: false,
            initialRoute: SplashScreen.routeName,
            routes: AppRoutes.route));
  }
}
