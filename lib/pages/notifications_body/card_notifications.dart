import 'package:final_project_job2023/api/noti_api_req.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardNotifications extends StatelessWidget {
  const CardNotifications({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: context.read<NotificationsProvider>().getPostFromApi(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return Consumer<NotificationsProvider>(
            builder: (ctx, providerNot, ch) {
              return providerNot.getNotList.isNotEmpty
                  ? ListView.builder(
                      itemCount: providerNot.getNotList.length,
                      itemBuilder: (ctx, index) {
                        return Card(
                          color: Colors.indigo,
                          elevation: 10,
                          child: ListTile(
                              contentPadding: const EdgeInsets.all(18),
                              textColor: Colors.white,
                              title: Container(
                                margin: const EdgeInsets.all(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Center(
                                    child: Text(
                                      providerNot.getNotList[index].senderID ??
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
                                      providerNot.getNotList[index].link ?? "",
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text(
                                    providerNot.getNotList[index].title ?? "",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    providerNot.getNotList[index].position ??
                                        "",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ))),
                        );
                      },
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


// this.data,
//final ModelNotifications data;

// SizedBox(
//       child: InkWell(
//         child: Card(
//           child: Stack(
//             children: [
//               Card(
//                 child: Text('senderName:' '${providerNot.senderName}'),
//               ),
//               Card(
//                 child: Text('sender Id:' '${providerNot.senderID}'),
//               ),
//               Card(
//                 child: Text('sender Id:' '${providerNot.senderID}'),
//               ),
//               Card(
//                 child: Text('StartInterView:' '${providerNot.interviewStart}'),
//               ),
//               Card(
//                 child: Text('Startinterview:' '${providerNot.interviewStart}'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );


//  Card(
//           color: const Color(0xFF61A4F1),
//           elevation: 10,
//           child: ListTile(
//               contentPadding: const EdgeInsets.all(18),
//               textColor: Colors.white,
//               title: Container(
//                 margin: const EdgeInsets.all(10),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Center(
//                     child: Text(
//                       '${providerNot.body}',
//                       style: const TextStyle(
//                           fontSize: 17, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//               subtitle: (Column(
//                 children: [
//                   Center(
//                     child: Text(
//                       "${providerNot.interviewStart}",
//                       style: const TextStyle(
//                           fontSize: 17, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                   Text(
//                     "${providerNot.senderID}",
//                     style: const TextStyle(
//                         fontSize: 17, fontWeight: FontWeight.w600),
//                   ),
//                   Text(
//                     "${providerNot.title}",
//                     style: const TextStyle(
//                         fontSize: 17, fontWeight: FontWeight.w600),
//                   ),
//                 ],
//               ))),
//         ),


// ListView.builder(
//       itemCount: ammar.length,
//       itemBuilder: (context, index) {
//         return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: const [
//                     Text(
//                       'Page Notifications',
//                       style: TextStyle(
//                           color: Color(0xFF478DE0),
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               Card(
//                 color: Colors.indigo,
//                 elevation: 10,
//                 child: ListTile(
//                   contentPadding: const EdgeInsets.all(18),
//                   textColor: Colors.white,
//                   title: Container(
//                     margin: const EdgeInsets.all(10),
//                     child: Padding(
//                       padding: const EdgeInsets.all(12),
//                       child: Center(
//                         child: Text(
//                           '${providerNot.link}',
//                           style: const TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                   subtitle: (Column(
//                     children: [
//                       Center(
//                         child: Text(
//                           "${providerNot.location}",
//                           style: const TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       Text(
//                         "${providerNot.title}",
//                         style: const TextStyle(
//                             fontSize: 17, fontWeight: FontWeight.w600),
//                       ),
//                       Text(
//                         "${providerNot.senderName}",
//                         style: const TextStyle(
//                             fontSize: 17, fontWeight: FontWeight.w600),
//                       ),
//                     ],
//                   )),
//                 ),
//               )
//             ]);
//       },
//     );
// List ammar = [];
    // final providerNot = Provider.of<ModelNotifications>(context);

    //  child: Column(
                      //   children: [
                      //     const SizedBox(
                      //       height: 10,
                      //     ),
                      //    ],
                      //              ),