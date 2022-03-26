import 'package:flutter/material.dart';

import 'utilities/archived_utilities.dart';

class ArchivedWidget extends StatefulWidget {
  const ArchivedWidget({Key? key}) : super(key: key);

  @override
  State<ArchivedWidget> createState() => _ArchivedWidgetState();
}

class _ArchivedWidgetState extends State<ArchivedWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // backgroundColor: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Expanded(
        flex: 15,
        child: ListView.builder(
            itemCount: 2,
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            itemBuilder: (BuildContext context, int index) {
              return const ArchivedUtilities();
            }),
      ),
    );
  }
}
