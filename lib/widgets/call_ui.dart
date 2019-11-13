import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';

import '../constant.dart';

class CallUI extends StatelessWidget {
  final CallModel data;

  CallUI({this.data});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("images/${data.imgUrl}"),
                  ),
                  Container(
                      width: 0.77 * width,
                      // color: Colors.orange,
                      // height: 20.0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              data.username,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: <Widget>[
                                callType(data.callType),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(data.lastCallDate,
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .subtitle
                                            .color)),
                              ],
                            ),
                          ]))
                ]),
            SizedBox(
              height: 5.0,
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
      ),
    );
  }

  Widget callType(CallType _callType) {
    if (CallType.Missed == _callType) {
      return Icon(
        Icons.call_received,
        color: Colors.red,
        size: 17.0,
      );
    }
    if (CallType.Received == _callType) {
      return Icon(
        Icons.call_received,
        color: Colors.green,
        size: 17.0,
      );
    }
    if (CallType.Sent == _callType) {
      return Icon(
        Icons.call_made,
        color: Colors.green,
        size: 17.0,
      );
    }
    return SizedBox();
  }
}
