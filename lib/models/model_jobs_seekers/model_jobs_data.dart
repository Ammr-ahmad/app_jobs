class JobSeekersData {
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

  JobSeekersData({
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
  factory JobSeekersData.fromJson(Map<String, dynamic> data) {
    return JobSeekersData(
      id: data['id'],
      userId: data['userId'],
      name: data['name'],
      email: data['email'],
      phone: data['phone'],
      gender: data['gender'],
      bio: data['bio'],
      location: data['location'],
      dob: data['dob'],
      skills: data['skills'],
      experince: data['experince'],
      wantedPositions: data['wantedPositions'],
      language: data['language'],
      createdDate: data['createdDate'],
      v: data['v'],
      avaIlable: data['avaIlable'],
      isRemotly: data['isRemotly'],
      levelOfEducation: data['levelOfEducation'],
      nationality: data['nationality'],
    );
  }
}
