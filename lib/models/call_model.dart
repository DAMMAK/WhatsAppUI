class CallModel {
  String username;
  String lastCallDate;
  CallType callType;
  String imgUrl;

  CallModel({this.username, this.lastCallDate, this.callType, this.imgUrl});
}

enum CallType { Missed, Received, Sent }

List<CallModel> callData() {
  List<CallModel> data = List<CallModel>();
  data.add(CallModel(
      username: "DAMMAK",
      callType: CallType.Received,
      lastCallDate: "November 6, 4:36 PM",
      imgUrl: "user1.jpg"));

  data.add(CallModel(
      username: "OluwaSeun",
      callType: CallType.Sent,
      lastCallDate: "4:36 PM",
      imgUrl: "user2.jpg"));

  data.add(CallModel(
      username: "James Lead",
      callType: CallType.Missed,
      lastCallDate: "November 12, 10:36 PM",
      imgUrl: "user3.jpg"));

  data.add(CallModel(
      username: "Boss",
      callType: CallType.Missed,
      lastCallDate: "November 12, 10:36 PM",
      imgUrl: "user4.jpg"));

  return data;
}
