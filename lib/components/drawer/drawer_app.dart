import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:final_project_job2023/components/drawer/drawer_setting.dart';
import 'package:final_project_job2023/pages/jobseekers_body/body_jobseekers_own.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../api/api_key_main.dart';

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
                title: ApiKey.jobSubmissions,
                icon: SvgPicture.asset(
                  'assets/icons/job-search.svg',
                  width: 30,
                  height: 30,
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const BodyOwn();
                  })));
                }),
            DrawerDesignSetting(
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                ),
                title: ApiKey.logout,
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
                        Navigator.of(context).pushNamed(SignInScreen.routeName);
                      },
                    ).show()),
          ],
        ),
      ),
    );
  }
}
