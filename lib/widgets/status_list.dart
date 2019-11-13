import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/status.dart';

import '../constant.dart';

class StatusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage("images/damola.jpeg"),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(43.0, 40.0),
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        child: Center(
                            child: Icon(
                          Icons.add,
                          size: 20.0,
                        )),
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "My status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).textTheme.title.color,
                            fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "Tap to add status update",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12.0,
                            color: Theme.of(context).textTheme.subtitle.color),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 25.0,
              width: double.infinity,
              color: Theme.of(context).accentColor,
              child: Transform.translate(
                offset: Offset(-0.35 * width, 0),
                child: Center(
                  child: Text(
                    "Recent updates",
                    style:
                        TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            //List View Here
            Expanded(child: Status())
          ],
        ),
      ),
    );
  }
}
