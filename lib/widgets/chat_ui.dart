import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/models/chat_model.dart';

import '../constant.dart';
import 'badge.dart';
import 'chats.dart';

class ChatUI extends StatefulWidget {
  Chat data;

  ChatUI({this.data});

  @override
  _ChatUIState createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("images/${widget.data.imgUrl}"),
              ),
              Container(
                width: 0.55 * width,

                // height: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.data.username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Theme.of(context).textTheme.title.color),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: <Widget>[
                        widget.data.isLastChatMessageRead
                            ? Icon(
                                Icons.done_all,
                                size: 15.0,
                                color: Theme.of(context).accentColor,
                              )
                            : SizedBox(),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.data.lastChatMessage,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color:
                                  Theme.of(context).textTheme.subtitle.color),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    widget.data.lastChatTime,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.subtitle.color),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  widget.data.messageUnread > 0
                      ? Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Badge("2"),
                        )
                      : SizedBox()
                ],
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.11 * width, 0.0),
            child: Container(
              padding: EdgeInsets.only(right: 40.0),
              height: 1.0,
              width: 0.74 * width,
              decoration: BoxDecoration(color: kLineColor.withOpacity(0.9)),
            ),
          )
        ],
      ),
    );
  }
}
