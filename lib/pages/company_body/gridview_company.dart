import 'package:flutter/material.dart';

class CompanyViewData extends StatelessWidget {
  static const routeName = 'Company';
  const CompanyViewData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //itemCount: compProvider.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2, // Horizontal,
        crossAxisSpacing: 2, // Vertical
      ),
      itemBuilder: (context, index) {
        return const Text('Amma');
        // return CompanyCard(data: dataCompany.elementAt(index));
      },
    );
    //  SafeArea(
    //   child: Scaffold(
    //     body: SingleChildScrollView(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(10),
    //             child: BackButton(
    //               color: Colors.blue,
    //               onPressed: () {
    //                 Navigator.of(context)
    //                     .pop(MaterialPageRoute(builder: ((context) {
    //                   return const CompanyCard();
    //                 })));
    //               },
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(15),
    //             child: Row(
    //               children: [
    //                 Text(
    //                   " name: ${compProvider.email}",
    //                   style: const TextStyle(fontSize: 17),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(15),
    //             child: Row(
    //               children: [
    //                 Text(
    //                   " email: ${compProvider.location}",
    //                   style: const TextStyle(fontSize: 17),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(15),
    //             child: Row(
    //               children: [
    //                 Text(
    //                   " description: ${compProvider.phone}",
    //                   style: const TextStyle(fontSize: 17),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(15),
    //             child: Row(
    //               children: [
    //                 Text(
    //                   " user phone number: ${compProvider.userFirstName}",
    //                   style: const TextStyle(fontSize: 17),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(15),
    //             child: Row(
    //               children: [
    //                 Text(
    //                   " location : ${compProvider.phone}",
    //                   style: const TextStyle(fontSize: 17),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(15),
    //             child: Row(
    //               children: [
    //                 Text(
    //                   " Positions : ${compProvider.userPhoneNumber}",
    //                   style: const TextStyle(fontSize: 17),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}


// GridView.builder(
//       itemCount: dataCompany.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         mainAxisSpacing: 2, // Horizontal,
//         crossAxisSpacing: 2, // Vertical
//       ),
//       itemBuilder: (context, index) {
//         return CompanyCard(data: dataCompany.elementAt(index));
//       },
//     );

// Provider Controller Api get list<MoselSocial> data
    // final ControllerApiDataAll datacompany = Provider.of<ControllerApiDataAll>(context, listen: false);
    // final List<ModelCompany> data =
    //     Provider.of<ControllerApiDataAll>(context, listen: false)
    //         .dataCompany!
    //         .company!;
    // final compProvider = Provider.of<ModelCompany>(context);
    // final companyId = ModalRoute.of(context)!.settings.arguments as String;
    // final company = companyId.(companyId);
    // final List<ModelCompany> dataCompany =
    //     Provider.of<ControllerApiDataAll?>(context, listen: true)
    //         .dataCompany!
    //         .company!;