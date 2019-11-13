import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/models/status_model.dart';

import '../constant.dart';
import 'badge.dart';
import 'chats.dart';

class StatusUI extends StatefulWidget {
  final StatusModel data;
  final bool endOfItem;
  StatusUI({this.data, this.endOfItem});

  @override
  _StatusUIState createState() => _StatusUIState();
}

class _StatusUIState extends State<StatusUI> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage("images/${widget.data.imgUrl}"),
          ),
          Container(
            width: 0.73 * width,
            // color: Colors.orange,
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
                Text(
                  widget.data.timeago,
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Theme.of(context).textTheme.subtitle.color,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10.0,
                ),
                !widget.endOfItem
                    ? Transform.translate(
                        offset: Offset(0 * width, 0.0),
                        child: Container(
                          padding: EdgeInsets.only(right: 40.0),
                          height: 1.0,
                          width: 0.76 * width,
                          decoration:
                              BoxDecoration(color: kLineColor.withOpacity(0.9)),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}
