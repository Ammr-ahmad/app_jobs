class NotificationsData {
  String? senderID;
  String? senderName;
  String? title;
  String? body;
  String? location;
  String? link;
  String? interviewStart;
  String? interviewEnd;
  String? position;
  String? type;

  NotificationsData({
    this.senderID,
    this.senderName,
    this.title,
    this.body,
    this.location,
    this.link,
    this.interviewStart,
    this.interviewEnd,
    this.position,
    this.type,
  });

  factory NotificationsData.fromJson(Map<String, dynamic> data) {
    return NotificationsData(
      senderID: data['senderID'],
      senderName: data['senderName'],
      title: data['title'],
      body: data['body'],
      location: data['location'],
      link: data['link'],
      interviewStart: data['interviewStart'],
      interviewEnd: data['interviewEnd'],
      position: data['position'],
      type: data['type'],
    );
  }
}
