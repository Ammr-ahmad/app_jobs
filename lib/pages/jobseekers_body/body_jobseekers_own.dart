import 'package:final_project_job2023/pages/jobseekers_body/body_jobseekers_two.dart';
import 'package:final_project_job2023/pages/jobseekers_body/experince_jobseekers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BodyOwn extends StatefulWidget {
  static const routeName = 'Body';
  const BodyOwn({Key? key}) : super(key: key);

  @override
  State<BodyOwn> createState() => _BodyOwnState();
}

class _BodyOwnState extends State<BodyOwn> {
  int sliderSkills = 1;
  String bio = "You Can";
  String name = '';
  String data = '';
  TextEditingController controller = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController sliderController = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    sliderController.dispose();
    super.dispose();
  }

  Future<String?> openDialog() => showDialog<String?>(
      context: context,
      builder: (context) => Column(
            children: [
              Column(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                  AlertDialog(
                      title: const Center(
                        child: Text(
                          'Skills',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      content: TextFormField(
                        onFieldSubmitted: (_) => submit(),
                        controller: controller,
                        autofocus: true,
                        cursorColor: Colors.black,
                        cursorHeight: 24,
                        decoration: InputDecoration(
                            hintText: 'Add New Skills',
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
                            Padding(padding: EdgeInsets.all(15)),
                            Text(
                              'Level',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Slider(
                                inactiveColor: Colors.indigo.shade100,
                                activeColor: Colors.blue.shade500,
                                max: 100.0,
                                value: sliderSkills.toDouble(),
                                onChanged: ((val) {
                                  setState(() {
                                    sliderSkills = val.toInt();
                                    sliderController.text =
                                        sliderSkills.toString();
                                    print(sliderSkills);
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
                              onPressed: submit,
                              child: const Text(
                                'Done',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                ],
              ),
            ],
          ));

  void submit() {
    // Consumer<ProfileProvider>(builder: (context, value, child) {
    //         final profile = value.companyall;

    // Provider.of<ProfileProvider>(context, listen: false).setSkills =
    //     controller.text;
    //String userName =
    // Provider.of<ProfileProvider>(context, listen: false).setID = 'id';
    //final provider = Provider.of<ProfileProvider>(context);
    // List<dynamic>? myList = provider.getSkills;
    controller.clear();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Page Profile',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                  margin: const EdgeInsets.all(20),
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
                        Icon(
                          Icons.person,
                          size: 27,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'About Me',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                            itemSize: 32,
                            initialRating: 1,
                            itemCount: 1,
                            itemBuilder: ((context, index) {
                              switch (index) {
                                case 1:
                                  return const Icon(
                                    Icons.sentiment_very_satisfied,
                                    color: Colors.orange,
                                  );
                                default:
                                  return const Icon(
                                    Icons.sentiment_very_satisfied,
                                    color: Colors.orange,
                                  );
                              }
                            }),
                            onRatingUpdate: (rating) {}),
                        Row(
                          children: [
                            const Text(
                              'You Can Add New Bio',
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
                            TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: const Text(
                                            'Enter The Bio',
                                            style: TextStyle(
                                                fontSize: 21,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          actions: [
                                            TextFormField(
                                              controller: bioController,
                                              cursorColor: Colors.black,
                                              cursorHeight: 22,
                                              decoration: InputDecoration(
                                                enabled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        borderSide:
                                                            const BorderSide(
                                                          color: Colors.black45,
                                                          width: 2,
                                                        )),
                                                hintText: 'Enter Input User',
                                                hintStyle: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                ),
                                                filled: true,
                                                fillColor: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Center(
                                                child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.blue.shade700,
                                              ),
                                              onPressed: () {
                                                Navigator.of(context,
                                                        rootNavigator: true)
                                                    .pop('dialog');
                                              },
                                              child: const Text(
                                                'Submit',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )),
                                          ],
                                        ));
                              },
                              child: const Text(
                                'Add New Bio ',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ])),
              Card(
                margin: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.grey[400],
                child: Column(children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.work,
                        size: 40,
                        color: Colors.black38,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Experince ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 145,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: ((context) {
                                    return const ExperienceInfo();
                                  })));
                                },
                                child: const Text(
                                  "Add New Experince",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              const Divider(),
              Card(
                margin: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.grey[400],
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Text(
                            'Skills',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: sliderController,
                      autofocus: true,
                      cursorColor: Colors.black,
                      cursorHeight: 24,
                      decoration: InputDecoration(
                          hintText: 'Add New Skills',
                          enabled: false,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
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
                              borderRadius: BorderRadius.circular(40))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              // for (int i = 0; i < myList.length; i++)
                              //   Text("•${myList[i]} "),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 160,
                        ),
                        TextButton(
                            onPressed: () {
                              openDialog();
                            },
                            child: const Text(
                              'Add New Skills',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ]),
                ),
              ),
              const Divider(),
              const BodyTwo(),
            ],
          ),
        ),
      ])
    ]));
  }
}
