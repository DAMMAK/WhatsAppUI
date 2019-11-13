import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';
import 'package:whatsapp/widgets/status_ui.dart';

import '../constant.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusModelData().length,
      itemBuilder: (BuildContext context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: StatusUI(
          data: statusModelData()[index],
          endOfItem: statusModelData().length - 1 == index ? true : false,
        ),
      ),
    );
  }
}
