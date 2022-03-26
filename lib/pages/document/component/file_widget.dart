import 'package:flutter/material.dart';

import 'utilities/file_utilities.dart';

class FileWidget extends StatefulWidget {
  const FileWidget({Key? key}) : super(key: key);

  @override
  State<FileWidget> createState() => _FileWidgetState();
}

class _FileWidgetState extends State<FileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Expanded(
        flex: 15,
        child: ListView.builder(
            itemCount: 2,
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            itemBuilder: (BuildContext context, int index) {
              return const FileUtilities();
            }),
      ),
    );
  }
}
