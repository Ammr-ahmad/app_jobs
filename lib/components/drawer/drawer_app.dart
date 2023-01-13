import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:final_project_job2023/components/drawer/drawer_setting.dart';
import 'package:final_project_job2023/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/languages/app_key.dart';
import '../../pages/notifications_body/body_notifications.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                'Ammar Matarieh',
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text(
                'ammar@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            DrawerDesignSetting(
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                ),
                title: AppKey.jobSubmissions,
                icon: SvgPicture.asset(
                  'assets/icons/job-search.svg',
                  width: 30,
                  height: 30,
                ),
                onTap: () {}),
            DrawerDesignSetting(
              title: AppKey.notifications,
              icon: SvgPicture.asset(
                "assets/icons/translate.svg",
                width: 30,
                height: 30,
              ),
              trailing: const BodyNotifications(),
            ),
            DrawerDesignSetting(
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                ),
                title: AppKey.logout,
                icon: SvgPicture.asset(
                  "assets/icons/logout.svg",
                  width: 30,
                  height: 30,
                ),
                onTap: () => AwesomeDialog(
                      context: context,
                      dialogType: DialogType.question,
                      animType: AnimType.bottomSlide,
                      title: 'Sign Out App',
                      desc: 'Do you want exit the app ?',
                      btnCancelText: 'No',
                      btnCancelOnPress: () {
                        Navigator.of(context, rootNavigator: true).pop();
                      },
                      btnOkText: 'Yes',
                      btnOkOnPress: () {
                        Navigator.of(context).pushNamed(SplashScreen.routeName);
                      },
                    ).show()),
          ],
        ),
      ),
    );
  }
}
