import 'package:final_project_job2023/model/notification_api/model_not_list.dart';
import 'package:final_project_job2023/model/notification_api/model_notifi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardNotifications extends StatelessWidget {
  const CardNotifications({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerNot = Provider.of<ModelNotifications>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
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
        Card(
          color: const Color(0xFF61A4F1),
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
                      '${providerNot.body}',
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
                      "${providerNot.interviewStart}",
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "${providerNot.senderID}",
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${providerNot.title}",
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ))),
        ),
      ],
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