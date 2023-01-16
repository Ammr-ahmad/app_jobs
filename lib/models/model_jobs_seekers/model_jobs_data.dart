class JobSeekersData {
  String? id;
  String? role;
  String? name;
  String? email;
  String? phone;
  String? password;
  List<dynamic>? notifications;
  List<dynamic>? wantedPositions;
  String? gender;
  String? dob;
  String? bio;
  String? nationality;
  String? education;
  List<dynamic>? levelOfEducation;
  List<dynamic>? skills;
  String? isAvailable;
  String? isRemotly;
  List<dynamic>? typeOfwork;
  List<dynamic>? experince;
  List<dynamic>? language;
  List<dynamic>? favourites;
  String? isHidden;
  String? createdAt;
  String? updatedAt;
  String? createdDate;
  String? v;
  String? avaIlable;

  JobSeekersData({
    this.id,
    this.role,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.notifications,
    this.wantedPositions,
    this.gender,
    this.dob,
    this.bio,
    this.nationality,
    this.education,
    this.levelOfEducation,
    this.skills,
    this.avaIlable,
    this.isRemotly,
    this.typeOfwork,
    this.experince,
    this.language,
    this.favourites,
    this.isHidden,
    this.createdAt,
    this.updatedAt,
    this.createdDate,
    this.v,
  });
  factory JobSeekersData.fromJson(Map<String, dynamic> data) {
    return JobSeekersData(
      id: data['_id'],
      role: data['role'],
      name: data['name'],
      email: data['email'],
      phone: data['phone'],
      password: data['password'],
      notifications: data['notifications'],
      wantedPositions: data['wantedPositions'],
      gender: data['gender'],
      dob: data['dob'],
      bio: data['bio'],
      nationality: data['nationality'],
      education: data['education'],
      skills: data['skills'],
      experince: data['experince'],
      levelOfEducation: data['levelOfEducation'],
      language: data['language'],
      createdDate: data['createdDate'],
      v: data['v'],
      avaIlable: data['avaIlable'],
      isRemotly: data['isRemotly'],
      typeOfwork: data['typeOfwork'],
      favourites: data['favourites'],
      isHidden: data['isHidden'],
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
    );
  }
}
