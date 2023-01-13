import 'package:final_project_job2023/components/appbar/appbar_main.dart';
import 'package:final_project_job2023/model/company_api/model_com_list.dart';
import 'package:final_project_job2023/model/company_api/model_comany.dart';
import 'package:final_project_job2023/pages/company_body/card_company.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

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

  final List<ModelCompany> searchListCom = [];
  List<ModelCompany> get company {
    return searchListCom;
  }

  List<ModelCompany> findByCompanyName({required String name}) {
    return searchListCom
        .where(
          (element) => element.name!.toLowerCase().contains(
                name.toLowerCase(),
              ),
        )
        .toList();
  }

  ModelCompany findById(String compId) {
    return searchListCom.firstWhere((element) => element.id == compId);
  }

  @override
  Widget build(BuildContext context) {
    final companyProvider = Provider.of<ModelCompanyList>(context);
    final searchListCom = companyProvider.company;
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
                            final searchListCom = companyProvider.company;
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
                  searchList.text.isNotEmpty
                      ? const Center(
                          child: Text("No Location Found"),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: searchList.text.isNotEmpty &&
                                    searchListCom!.isNotEmpty
                                ? company.length
                                : searchListCom?.length,
                            itemBuilder: (context, i) {
                              return ChangeNotifierProvider.value(
                                  value: searchList.text.isNotEmpty
                                      ? company[i]
                                      : searchListCom?[i],
                                  child: const CompanyCard());
                            },
                          ),
                        )
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