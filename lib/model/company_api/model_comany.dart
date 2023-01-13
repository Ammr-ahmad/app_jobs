import 'package:final_project_job2023/api/api_key.dart';
import 'package:flutter/cupertino.dart';

class ModelCompany with ChangeNotifier {
  String? id;
  String? userFirstName;
  String? userLastName;
  String? userPhoneNumber;
  String? name;
  String? desc;
  String? phone;
  String? email;
  String? companyType;
  String? location;
  List<String>? wantedPositions;
  String? createdDate;
  int? v;

  ModelCompany({
    this.id,
    this.userFirstName,
    this.userLastName,
    this.userPhoneNumber,
    this.name,
    this.desc,
    this.phone,
    this.email,
    this.companyType,
    this.location,
    this.wantedPositions,
    this.createdDate,
    this.v,
  });

  ModelCompany.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty),
        id = json[ApiKey.id],
        userFirstName = json[ApiKey.userFirstName],
        userLastName = json[ApiKey.userLastName],
        userPhoneNumber = json[ApiKey.userPhoneNumber],
        email = json[ApiKey.email],
        name = json[ApiKey.name],
        desc = json[ApiKey.desc],
        phone = json[ApiKey.phone],
        companyType = json[ApiKey.companyType],
        location = (json[ApiKey.location]),
        wantedPositions = json[ApiKey.wantedPositions],
        createdDate = json[ApiKey.createdDate],
        v = json[ApiKey.v];
  notifyListeners();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[ApiKey.id] = id;
    data[ApiKey.userFirstName] = userFirstName;
    data[ApiKey.userLastName] = userLastName;
    data[ApiKey.userPhoneNumber] = userPhoneNumber;
    data[ApiKey.name] = name;
    data[ApiKey.desc] = desc;
    data[ApiKey.phone] = phone;
    data[ApiKey.companyType] = companyType;
    data[ApiKey.location] = location;
    data[ApiKey.wantedPositions] = wantedPositions;
    data[ApiKey.createdDate] = createdDate;
    data[ApiKey.v] = v;
    notifyListeners();
    return data;
  }
}
