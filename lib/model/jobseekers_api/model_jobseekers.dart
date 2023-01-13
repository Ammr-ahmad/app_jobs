import 'package:final_project_job2023/api/api_key.dart';
import 'package:flutter/cupertino.dart';

class ModelJob with ChangeNotifier {
  String? id;
  String? userId;
  String? name;
  String? email;
  int? phone;
  String? gender;
  String? bio;
  String? location;
  String? dob;
  List<String>? skills;
  List<String>? experince;
  List<String>? wantedPositions;
  List<String>? language;
  String? createdDate;
  int? v;
  String? avaIlable;
  String? isRemotly;
  List<String>? levelOfEducation;
  String? nationality;

  ModelJob({
    this.id,
    this.userId,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.bio,
    this.location,
    this.dob,
    this.skills,
    this.experince,
    this.wantedPositions,
    this.language,
    this.createdDate,
    this.v,
    this.avaIlable,
    this.isRemotly,
    this.levelOfEducation,
    this.nationality,
  });

  ModelJob.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty),
        id = json[ApiKey.id],
        userId = json[ApiKey.userId],
        name = json[ApiKey.name],
        email = json[ApiKey.email],
        phone = json[ApiKey.phone],
        gender = json[ApiKey.gender],
        bio = json[ApiKey.bio],
        location = (json[ApiKey.location]),
        dob = json[ApiKey.dob],
        skills = json[ApiKey.skills],
        experince = json[ApiKey.experiences],
        wantedPositions = json[ApiKey.wantedPositions],
        language = json[ApiKey.languages],
        createdDate = json[ApiKey.createdDate],
        v = json[ApiKey.v],
        avaIlable = json[ApiKey.available],
        isRemotly = json[ApiKey.isRemotly],
        levelOfEducation = json[ApiKey.levelOfEducation],
        nationality = json[ApiKey.nationality];
  notifyListeners();

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data[ApiKey.id] = id;
    data[ApiKey.userId] = userId;
    data[ApiKey.name] = name;
    data[ApiKey.email] = email;
    data[ApiKey.phone] = phone;
    data[ApiKey.gender] = gender;
    data[ApiKey.bio] = bio;
    data[ApiKey.location] = location;
    data[ApiKey.dob] = dob;
    data[ApiKey.skills] = skills;
    data[ApiKey.experiences] = experince;
    data[ApiKey.wantedPositions] = wantedPositions;
    data[ApiKey.languages] = language;
    data[ApiKey.createdDate] = createdDate;
    data[ApiKey.v] = v;
    data[ApiKey.available] = avaIlable;
    data[ApiKey.isRemotly] = isRemotly;
    data[ApiKey.levelOfEducation] = levelOfEducation;
    data[ApiKey.nationality] = nationality;
    notifyListeners();
    return data;
  }
}
