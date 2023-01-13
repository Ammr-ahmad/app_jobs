import 'package:final_project_job2023/components/appbar/appbar_main.dart';
import 'package:final_project_job2023/model/jobseekers_api/model_jobseekers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyInfoPersonal extends StatefulWidget {
  const BodyInfoPersonal({Key? key}) : super(key: key);

  @override
  State<BodyInfoPersonal> createState() => _BodyInfoPersonalState();
}

class _BodyInfoPersonalState extends State<BodyInfoPersonal> {
  TextEditingController fullName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController address = TextEditingController();
  String fullN = '';
  String emAdd = '';
  String addRess = '';
  String phoneNum = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<ModelJob?>(context);
    return Scaffold(
        appBar: const AppBarMain(),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.all(10),
                ),
              ],
            ),
            const Center(
              child: Text(
                'Information User',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(12),
                ),
                const Text(
                  'FullName',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: fullName,
                cursorColor: Colors.black,
                cursorHeight: 22,
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black45,
                        width: 2,
                      )),
                  labelText: 'Add FullName',
                  hintText: 'Add FullName',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.all(10),
                ),
                const Text(
                  'Email Address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: emailAddress,
                cursorColor: Colors.black,
                cursorHeight: 22,
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black45,
                        width: 2,
                      )),
                  labelText: 'Add Email Address',
                  hintText: 'Add Email Address',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.all(10),
                ),
                const Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: phoneNumber,
                cursorColor: Colors.black,
                cursorHeight: 22,
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black45,
                        width: 2,
                      )),
                  labelText: 'Add Phone Number',
                  hintText: 'Add Phone Number',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.all(10),
                ),
                const Text(
                  'Address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: address,
                cursorColor: Colors.black,
                cursorHeight: 22,
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black45,
                        width: 2,
                      )),
                  labelText: 'Add Address',
                  hintText: 'Add Address',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 140),
                    child: SizedBox(
                        width: 100,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade600,
                          ),
                          onPressed: () {
                            // fullN = providerdata.fullN.toString();
                            // emAdd = emailAddress.text;
                            // addRess = address.text;
                            // phoneNum = phoneNumber.text;
                            // fullN = providerdata.userId;
                            // profileProvider.setEmailAdd = emailAddress.text;
                            // profileProvider.setAddress = address.text;
                            // profileProvider.setPhone = phoneNumber.text;
                            Navigator.of(context, rootNavigator: true)
                                .pop('expe');
                          },
                          child: const Text(
                            'Save Info',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ])
        ])));
  }
}
