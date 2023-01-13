import 'package:final_project_job2023/controllers/api_controllers.dart';
import 'package:final_project_job2023/model/company_api/model_com_list.dart';
import 'package:final_project_job2023/model/company_api/model_comany.dart';
import 'package:final_project_job2023/model/jobseekers_api/model_jobseekers.dart';
import 'package:final_project_job2023/model/notification_api/model_not_list.dart';
import 'package:final_project_job2023/model/notification_api/model_notifi.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerListAll = [
  ChangeNotifierProvider(create: (_) => ControllerApiDataAll()),
  ChangeNotifierProvider(create: (_) => ModelCompanyList()),
  ChangeNotifierProvider(create: (_) => ModelCompany()),
  ChangeNotifierProvider(
    create: (_) => ModelJob(),
  ),
  ChangeNotifierProvider(create: (_) => ModelNotifications(link: '')),
];
