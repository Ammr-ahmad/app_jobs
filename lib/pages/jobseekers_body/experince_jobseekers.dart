import 'package:final_project_job2023/model/jobseekers_api/model_job_list.dart';
import 'package:final_project_job2023/model/jobseekers_api/model_jobseekers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExperienceInfo extends StatefulWidget {
  const ExperienceInfo({super.key});

  @override
  State<ExperienceInfo> createState() => _ExperienceInfoState();
}

class _ExperienceInfoState extends State<ExperienceInfo> {
  TextEditingController expController = TextEditingController();
  TextEditingController comController = TextEditingController();
  TextEditingController descController = TextEditingController();
  String expName = "";
  String comName = "";
  String desc = "";

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ModelJob?>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        centerTitle: true,
        title: const Text(
          'Page Experince',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Center(
              child: Text(
            'Experince Info',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: const Text(
            'Experince Name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: const EdgeInsetsDirectional.all(15),
          child: TextFormField(
            controller: expController,
            cursorColor: Colors.black,
            cursorHeight: 24,
            decoration: InputDecoration(
              hintText: 'Add Experince Name',
              enabled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black45,
                    width: 2,
                  )),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              'Company Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )),
        Container(
          margin: const EdgeInsetsDirectional.all(15),
          child: TextFormField(
            controller: comController,
            cursorColor: Colors.black,
            cursorHeight: 24,
            decoration: InputDecoration(
              hintText: 'Add Company Name',
              enabled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black45,
                    width: 2,
                  )),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              'Descriptions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )),
        Container(
          margin: const EdgeInsetsDirectional.all(15),
          child: TextFormField(
            controller: descController,
            cursorColor: Colors.black,
            cursorHeight: 24,
            decoration: InputDecoration(
              hintText: 'Add Description ',
              enabled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black45,
                    width: 2,
                  )),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
              child: SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                  onPressed: () {
                    comName = comController.text;
                    expName = expController.text;
                    desc = descController.text;
                    //provider. = comController.text;
                    //profileProvider.setExpName = expController.text;
                    //provider.setDesc = desc;
                    Navigator.of(context, rootNavigator: true).pop('expe');
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
