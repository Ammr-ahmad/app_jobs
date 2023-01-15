class CompanyData {
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

  CompanyData({
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

  factory CompanyData.fromJson(Map<String, dynamic> data) {
    return CompanyData(
      id: data['id'],
      userFirstName: data['userFirstName'],
      userLastName: data['userLastName'],
      userPhoneNumber: data['userPhoneNumber'],
      name: data['name'],
      desc: data['desc'],
      phone: data['phone'],
      email: data['email'],
      companyType: data['companyType'],
      location: data['location'],
      wantedPositions: data['wantedPositions'],
      createdDate: data['createdDate'],
      v: data['v'],
    );
  }
}
