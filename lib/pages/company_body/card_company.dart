import 'package:final_project_job2023/api/com_api_req.dart';
import 'package:final_project_job2023/pages/company_body/gridview_company.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final data = Provider.of<ModelCompany?>(context, listen: true);
    return FutureBuilder(
      future: context.read<CompanyProvider>().getPostFromApi(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return Consumer<CompanyProvider>(
            builder: (ctx, providerCom, ch) {
              return providerCom.getComList.isNotEmpty
                  ? ListView.builder(
                      itemCount: providerCom.getComList.length,
                      itemBuilder: (ctx, index) {
                        return Card(
                          color: Colors.indigo,
                          elevation: 10,
                          child: ListTile(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, CompanyViewData.routeName,
                                    arguments: providerCom.getComList);
                              },
                              contentPadding: const EdgeInsets.all(18),
                              textColor: Colors.white,
                              title: Container(
                                margin: const EdgeInsets.all(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Center(
                                    child: Text(
                                      providerCom
                                              .getComList[index].companyType ??
                                          "",
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              subtitle: (Column(
                                children: [
                                  Center(
                                    child: Text(
                                      providerCom.getComList[index].name ?? "",
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text(
                                    providerCom.getComList[index].phone ?? "",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    providerCom.getComList[index].desc ?? "",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ))),
                        );
                      },

                      //  child: Column(
                      //   children: [
                      //     const SizedBox(
                      //       height: 10,
                      //     ),
                      //    ],
                      //              ),
                    )
                  : const Center(
                      child: Text("No posts yet"),
                    );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
                backgroundColor: Colors.red, color: Colors.green),
          );
        }
      },
    );
  }
}

// GridTile(
//       //header: IconInstall(dataModel: dataModel),
//       footer: Card(
//         //color: AppColors.blackCardSocial,
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   '${data.name}',
//                   //style: TextStyle(color: AppColors.bgWhite),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               Text(data.companyType),
//               Text(
//                 '${data.desc}',
                
//               ),
//             ],
//           ),
//         ),
//       ),
//       // * image
//       child: Card(
//         child: Text(data.location),
//       ),
//     );

// required ModelCompany data,