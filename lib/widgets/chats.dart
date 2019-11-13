import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'chat_ui.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        itemCount: messages().length,
        itemBuilder: (BuildContext context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChatUI(data: messages()[index]),
        ),
      ),
    );
  }
}

