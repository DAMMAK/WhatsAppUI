import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';
import 'package:whatsapp/widgets/call_ui.dart';
import 'package:whatsapp/widgets/chat_ui.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        itemCount: callData().length,
        itemBuilder: (BuildContext context, int index) {
          return CallUI(data: callData()[index]);
        },
      ),
    );
  }
}
