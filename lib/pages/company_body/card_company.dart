import 'package:final_project_job2023/model/company_api/model_comany.dart';
import 'package:final_project_job2023/pages/company_body/gridview_company.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ModelCompany?>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text(
                'Page Notifications',
                style: TextStyle(
                    color: Color(0xFF478DE0),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.indigo,
          elevation: 10,
          child: ListTile(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  CompanyViewData.routeName,
                  arguments: data!.id,
                );
              },
              contentPadding: const EdgeInsets.all(18),
              textColor: Colors.white,
              title: Container(
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      '${data?.name}',
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              subtitle: (Column(
                children: [
                  Center(
                    child: Text(
                      "${data?.desc}",
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "${data?.location}",
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${data?.phone}",
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ))),
        )
      ],
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