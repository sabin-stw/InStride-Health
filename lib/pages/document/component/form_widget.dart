import 'package:flutter/material.dart';

import 'utilities/form_utilities.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Expanded(
        flex: 15,
        child: ListView.builder(
            itemCount: 1,
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            itemBuilder: (BuildContext context, int index) {
              return const FormUtilities();
            }),
      ),
    );
  }
}
