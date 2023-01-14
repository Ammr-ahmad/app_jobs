import 'package:final_project_job2023/components/appbar/appbar_main.dart';
import 'package:final_project_job2023/model/model_company/model_com_data.dart';
import 'package:final_project_job2023/pages/company_body/card_company.dart';
import 'package:flutter/material.dart';

class BodyCompany extends StatefulWidget {
  const BodyCompany({Key? key}) : super(key: key);

  @override
  State<BodyCompany> createState() => _BodyCompanyState();
}

class _BodyCompanyState extends State<BodyCompany> {
  TextEditingController searchList = TextEditingController();

  @override
  void dispose() {
    searchList.dispose();
    super.dispose();
  }

  final List<CompanyData> searchListCom = [];
  List<CompanyData> get company {
    return searchListCom;
  }

  List<CompanyData> findByCompanyName({required String name}) {
    return searchListCom
        .where(
          (element) => element.name!.toLowerCase().contains(
                name.toLowerCase(),
              ),
        )
        .toList();
  }

  CompanyData findById(String compId) {
    return searchListCom.firstWhere((element) => element.id == compId);
  }

  @override
  Widget build(BuildContext context) {
    // final companyProvider = Provider.of<ModelCompanyList>(context);
    // final searchListCom = companyProvider.company;
    // ChangeNotifierProvider(create: (_) => ModelCompanyList()),
    // ChangeNotifierProvider(create: (_) => ModelCompany()),
    // ChangeNotifierProvider(
    //  create: (_) => ModelJob(),
    //  ),
    // ChangeNotifierProvider(create: (_) => ModelNotifications(link: '')),
    return Scaffold(
        appBar: const AppBarMain(),
        body: Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: TextField(
                      controller: searchList,
                      onChanged: (value) {
                        setState(
                          () {
                            // final searchListCom = companyProvider.company;
                          },
                        );
                      },
                      cursorColor: Colors.black,
                      cursorHeight: 22,
                      decoration: InputDecoration(
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black45,
                            width: 2,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        labelText: 'Search company',
                        hintText: 'Search Company',
                        hintStyle:
                            Theme.of(context).inputDecorationTheme.hintStyle,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),

                  const Expanded(child: CompanyCard())
                  // searchList.text.isNotEmpty
                  //     ? const Center(
                  //         child: Text("No Location Found"),
                  //       )
                  //     : Expanded(
                  //         child:

                  // ListView.builder(
                  //   itemCount: searchList.text.isNotEmpty &&
                  //           searchListCom!.isNotEmpty
                  //       ? company.length
                  //       : searchListCom?.length,
                  //   itemBuilder: (context, i) {
                  //     return ChangeNotifierProvider.value(
                  //       value: searchList.text.isNotEmpty
                  //           ? company[i]
                  //           : searchListCom?[i],
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child: Column(
                  //           children: [
                  //             Row(
                  //               children: const [
                  //                 Text(
                  //                   'Page Notifications',
                  //                   style: TextStyle(
                  //                       color: Color(0xFF478DE0),

                  //                       fontSize: 22,
                  //                       fontWeight: FontWeight.bold),
                  //                 ),
                  //               ],
                  //             ),
                  //             const CompanyCard(),
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                  //  )
                ])));
  }
}

// : providerApi.dataSocial?.social != null
//             ? const SocialGridView()
//             : ErrorText(title: AppLangKey.errorNoData);
// * fetch data no listen any change
// final ControllerApi controllerApi =
//     Provider.of<ControllerApi>(context, listen: false);
// Future.delayed(Duration.zero, () {
//   controllerApi.fetchDataSocial(context);
// });
// Provider Controller Api

//usersList

//final ControllerApiDataAll providerApi =
//  Provider.of<ControllerApiDataAll>(context);
// //searchListCom!.isEmpty &&
//searchListCom!.isEmpty

// final ControllerApiDataAll controllerApi =
//     Provider.of<ControllerApiDataAll>(context, listen: false);
// Future.delayed(Duration.zero, () {
//   controllerApi.fetchDataCompany(context);
// });
