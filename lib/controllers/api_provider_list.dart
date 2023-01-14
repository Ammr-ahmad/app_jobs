import 'package:final_project_job2023/api/api_com_req.dart';
import 'package:final_project_job2023/api/api_noti_req.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerListAll = [
  ChangeNotifierProvider(create: (_) => CompanyProvider()),
  ChangeNotifierProvider(create: (_) => NotificationsProvider()),
];
