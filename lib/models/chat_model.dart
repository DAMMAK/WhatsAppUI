class Chat {
  String imgUrl;
  String username;
  String lastChatTime;
  String lastChatMessage;
  bool isLastChatMessageRead;
  int messageUnread;

  Chat(
      {this.imgUrl,
      this.username,
      this.lastChatMessage,
      this.isLastChatMessageRead,
      this.lastChatTime,
      this.messageUnread});
}

List<Chat> messages() {
  List<Chat> chatMessage = List<Chat>();
  chatMessage.add(Chat(
      imgUrl: "user1.jpg",
      username: "Jason College",
      lastChatMessage: "Not coming to work today",
      isLastChatMessageRead: true,
      lastChatTime: "2:50 PM",
      messageUnread: 0));

  chatMessage.add(Chat(
      imgUrl: "user2.jpg",
      username: "Diana",
      lastChatMessage: "Dinner at moms",
      isLastChatMessageRead: false,
      lastChatTime: "2:15 PM",
      messageUnread: 1));

  chatMessage.add(Chat(
      imgUrl: "user3.jpg",
      username: "James Lead",
      lastChatMessage: "Where you at?",
      isLastChatMessageRead: false,
      lastChatTime: "1:45 PM",
      messageUnread: 1));

  chatMessage.add(Chat(
      imgUrl: "user4.jpg",
      username: "Boss",
      lastChatMessage: "Thanks I got the mail",
      isLastChatMessageRead: true,
      lastChatTime: "12:50 PM",
      messageUnread: 0));

  chatMessage.add(Chat(
      imgUrl: "user5.jpg",
      username: "Big Bro",
      lastChatMessage: "Thanks I got the mail",
      isLastChatMessageRead: true,
      lastChatTime: "11:30 AM",
      messageUnread: 0));

  chatMessage.add(Chat(
      imgUrl: "user6.jpg",
      username: "Janet",
      lastChatMessage: "you free for a gig ?",
      isLastChatMessageRead: false,
      lastChatTime: "1:45 PM",
      messageUnread: 3));

  chatMessage.add(Chat(
      imgUrl: "user7.jpg",
      username: "Akan",
      lastChatMessage: "Free tomorrow",
      isLastChatMessageRead: false,
      lastChatTime: "Yesterday",
      messageUnread: 2));

  return chatMessage;
}
