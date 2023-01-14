class Post {
  int? userId;
  int? postId;
  String? postTitle;
  String? postBody;

  Post({this.postBody, this.postId, this.postTitle, this.userId});

  factory Post.fromJson(Map<String, dynamic> jsonObj) {
    return Post(
        postBody: jsonObj['body'],
        postId: jsonObj['id'],
        postTitle: jsonObj["title"],
        userId: jsonObj['userId']);
  }
}
