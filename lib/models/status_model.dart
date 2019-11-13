class StatusModel {
  String imgUrl;
  String username;
  String timeago;

  StatusModel({this.imgUrl, this.username, this.timeago});
}

List<StatusModel> statusModelData() {
  List<StatusModel> statusModelData = List<StatusModel>();
  statusModelData.add(StatusModel(
      imgUrl: "user1.jpg", username: "James Lead", timeago: "1 minutes ago"));

  statusModelData.add(StatusModel(
      imgUrl: "user2.jpg", username: "Boss", timeago: "Today 10AM"));

  return statusModelData;
}
