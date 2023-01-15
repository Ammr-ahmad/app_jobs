class NotificationsData {
  String? notificationType;
  String? name;
  String? title;
  String? description;
  String? location;
  String? link;
  String? interviewStartTime;
  String? interviewEndTime;
  String? position;
  String? isAccepted;

  NotificationsData({
    this.notificationType,
    this.name,
    this.title,
    this.description,
    this.location,
    this.link,
    this.interviewStartTime,
    this.interviewEndTime,
    this.position,
    this.isAccepted,
  });

  factory NotificationsData.fromJson(Map<String, dynamic> data) {
    return NotificationsData(
      notificationType: data['notificationType'],
      name: data['name'],
      title: data['title'],
      description: data['description'],
      location: data['location'],
      link: data['link'],
      interviewStartTime: data['interviewStartTime'],
      interviewEndTime: data['interviewEndTime'],
      position: data['position'],
      isAccepted: data['isAccepted'],
    );
  }
}
