import 'package:flutter/material.dart';

import '../constant.dart';

class Badge extends StatelessWidget {
  final String title;
  Badge(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.0,
      width: 18.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Theme.of(context).accentColor),
      child: Center(
          child: Text(
        title,
        style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
      )),
    );
  }
}
