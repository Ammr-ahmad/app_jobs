import 'package:final_project_job2023/api/com_api_req.dart';
import 'package:final_project_job2023/api/job_api_req.dart';
import 'package:final_project_job2023/api/noti_api_req.dart';
import 'package:final_project_job2023/controllers/auth1_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerListAll = [
  ChangeNotifierProvider(create: (_) => CompanyProvider()),
  ChangeNotifierProvider(create: (_) => NotificationsProvider()),
  ChangeNotifierProvider(create: (_) => ProviderSignIn()),
  ChangeNotifierProvider(create: (_) => JobSeekersProvider()),
];
