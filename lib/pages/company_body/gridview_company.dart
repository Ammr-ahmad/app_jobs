import 'package:final_project_job2023/pages/company_body/card_company.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../api/com_api_req.dart';
import '../../models/model_company/model_com_data.dart';

class CompanyViewData extends StatefulWidget {
  static const routeName = 'Company';
  const CompanyViewData({Key? key}) : super(key: key);

  @override
  State<CompanyViewData> createState() => _CompanyViewDataState();
}

class _CompanyViewDataState extends State<CompanyViewData> {
  CompanyData? companyData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Consumer<CompanyProvider>(
            builder: (ctx, companyProvider, ch) {
              companyData = companyProvider
                  .getComList[companyProvider.getSelectedCompanyIndex];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: BackButton(
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.of(context)
                            .pop(MaterialPageRoute(builder: ((context) {
                          return const CompanyCard();
                        })));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Text(
                          'Info Companies',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 150,
                            height: 45,
                            child: Text(
                              " name: ${companyData!.name ?? ""}",
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 280,
                            height: 45,
                            child: Text(
                              " email: ${companyData!.email ?? ""}",
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 350,
                            height: 45,
                            child: Text(
                              " description: ${companyData!.id ?? ""}",
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 200,
                            height: 45,
                            child: Text(
                              " location : ${companyData!.location ?? ""}",
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 200,
                            height: 45,
                            child: Text(
                              " role : ${companyData!.role ?? ""}",
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 300,
                            height: 45,
                            child: Text(
                              " companyUserPhone : ${companyData!.companyUserPhone ?? ""}",
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 300,
                            height: 45,
                            child: Text(
                              " website : ${companyData!.website ?? ""}",
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Card(
                          color: Colors.blue.shade500,
                          child: SizedBox(
                            width: 300,
                            height: 45,
                            child: Text(
                              " isHidden : ${companyData!.isHidden ?? ""}",
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
