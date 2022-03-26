import 'package:flutter/material.dart';

class FileUtilities extends StatefulWidget {
  const FileUtilities({Key? key}) : super(key: key);

  @override
  State<FileUtilities> createState() => _FileUtilitiesState();
}

class _FileUtilitiesState extends State<FileUtilities> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blueAccent)),
            padding: const EdgeInsets.only(left: 10, right: 10, top: 2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Intake",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Participant Form",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )),
                        IconButton(
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.list_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Completed",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.verified,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
