import 'package:deerholdlearn/pages/chat/component/utilities/active_utilities.dart';
import 'package:flutter/material.dart';

class ActiveWidget extends StatefulWidget {
  const ActiveWidget({Key? key}) : super(key: key);

  @override
  State<ActiveWidget> createState() => _ActiveWidgetState();
}

class _ActiveWidgetState extends State<ActiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        child: ListView.builder(
            itemCount: 10,
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            itemBuilder: (BuildContext context, int index) {
              return const ActiveUtilities();
            }),
      ),
    );
  }
}
