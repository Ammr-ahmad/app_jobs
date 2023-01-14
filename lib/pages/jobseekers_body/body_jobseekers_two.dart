import 'package:final_project_job2023/pages/jobseekers_body/info_jobseekers.dart';
import 'package:flutter/material.dart';

class BodyTwo extends StatefulWidget {
  const BodyTwo({super.key});

  @override
  State<BodyTwo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BodyTwo> {
  int sliderLang = 1;
  TextEditingController controllertwo = TextEditingController();
  TextEditingController sliderController = TextEditingController();
  TextEditingController sliderlangController = TextEditingController();
  TextEditingController langController = TextEditingController();

  @override
  void initState() {
    super.initState();
    controllertwo = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // final ControllerApiDataAll controllerApidata =
      //     Provider.of<ControllerApiDataAll>(context, listen: false);
      // Future.delayed(Duration.zero, () {
      //   controllerApidata.dataJobs;
    });
    // });
  }

  @override
  void dispose() {
    // Provider.of<ProfileProvider>(context, listen: false).setlang =
    //     controllertwo.text;
    controllertwo.dispose();
    super.dispose();
  }

  Future<String?> dialogtwo() => showDialog<String?>(
      context: context,
      builder: (context) => Column(children: [
            AlertDialog(
                title: const Center(
                  child: Text(
                    'Languages',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                content: TextFormField(
                  onFieldSubmitted: (_) => ok(),
                  controller: controllertwo,
                  autofocus: true,
                  cursorColor: Colors.black,
                  cursorHeight: 24,
                  decoration: InputDecoration(
                      hintText: 'Add New Language',
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black45,
                            width: 2,
                          )),
                      hintStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                actions: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Level',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Slider(
                          inactiveColor: Colors.indigo.shade100,
                          activeColor: Colors.blue.shade500,
                          max: 100.0,
                          value: sliderLang.toDouble(),
                          onChanged: ((val) {
                            setState(() {
                              sliderLang = val.toInt();
                              sliderController.text = sliderLang.toString();
                              print(sliderLang);
                            });
                          }),
                        ),
                        const Text(
                          'Make a Choice',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo.shade500,
                        ),
                        onPressed: ok,
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ])
          ]));

  void ok() {
    // Provider.of<ProfileProvider>(context, listen: false).setlang =
    //     controllertwo.text;
    controllertwo.clear();
  }

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ProfileProvider>(context);
    // List<dynamic>? langList = provider.getLangs;
    return Column(children: [
      SingleChildScrollView(
          child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
                margin: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.grey[400],
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Row(
                        children: const [
                          Text(
                            'Personal Info',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                        height: 10,
                      ),
                      // Consumer<ProfileProvider>(
                      //     builder: (context, value, child) {
                      //   final profile = value.companyall;
                      //   return Column(children: [
                      //     Row(children: const [
                      //       Text(
                      //         'fullName: ${' ,ld'}',
                      //         style: TextStyle(
                      //           fontSize: 16,
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      //       ),
                      //     ]),
                      Row(
                        children: const [
                          Text(
                            'fullName: ${'kxd'}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'fullName: ${'a'}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'fullName: ${'amm'}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 175,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const BodyInfoPersonal();
                              }));
                            },
                            child: const Text(
                              'Edit the Info >>',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                    ])))),
        Card(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                  margin: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.grey[400],
                  child: Column(children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Row(
                      children: const [
                        Text(
                          'Language',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.all(10),
                      child: TextFormField(
                        enabled: false,
                        controller: sliderlangController,
                        cursorColor: Colors.black,
                        cursorHeight: 24,
                        decoration: InputDecoration(
                            enabled: false,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black45,
                                  width: 2,
                                )),
                            hintText: 'Add New Language',
                            hintStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              // for (int i = 0; i < langList.length; i++)
                              //  Text("•${langList[i]} "),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 145,
                      ),
                      TextButton(
                          onPressed: () {
                            dialogtwo();
                          },
                          child: const Text(
                            'Add New Language >>',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )),
                      const Divider(),
                    ])
                  ])))
        ])),
        Card(
            margin: const EdgeInsets.all(25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.grey[400],
            child: Column(children: [
              Row(
                children: const [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Position',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Text(
              //       'pos: ${provider.getId}',
              //       style: const TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.normal,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsetsDirectional.all(10),
                child: TextFormField(
                  cursorColor: Colors.black,
                  cursorHeight: 24,
                  decoration: InputDecoration(
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black45,
                            width: 2,
                          )),
                      hintText: 'Add Position',
                      hintStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 170,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Add New Position +',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const Divider(),
            ]))
      ]))
    ]);
  }
}
