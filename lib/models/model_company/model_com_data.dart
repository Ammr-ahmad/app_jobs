class CompanyData {
  String? id;
  String? role;
  String? name;
  String? companyUserPhone;
  String? email;
  String? phone;
  String? password;
  String? location;
  String? companyUserFullName;
  String? desc;
  String? website;
  List<dynamic>? wantedPositions;
  List<String>? favourites;
  String? isHidden;
  String? companyType;
  String? createdAt;
  String? updatedAt;
  String? createdDate;
  int? v;

  CompanyData({
    this.id,
    this.role,
    this.name,
    this.companyUserPhone,
    this.email,
    this.password,
    this.location,
    this.companyUserFullName,
    this.desc,
    this.website,
    this.isHidden,
    this.companyType,
    this.createdAt,
    this.updatedAt,
    this.wantedPositions,
    this.createdDate,
    this.v,
  });

  factory CompanyData.fromJson(Map<String, dynamic> data) {
    return CompanyData(
      id: data['_id'],
      role: data['role'],
      name: data['name'],
      companyUserPhone: data['companyUserPhone'],
      email: data['email'],
      password: data['password'],
      location: data['location'],
      companyUserFullName: data['companyUserFullName'],
      desc: data['desc'],
      website: data['website'],
      isHidden: data['isHidden'],
      companyType: data['companyType'],
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
      wantedPositions: data['wantedPositions'],
      createdDate: data['createdDate'],
      v: data['__v'],
    );
  }
}
