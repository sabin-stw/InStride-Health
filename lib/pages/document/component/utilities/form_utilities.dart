import 'package:flutter/material.dart';

class FormUtilities extends StatefulWidget {
  const FormUtilities({Key? key}) : super(key: key);

  @override
  State<FormUtilities> createState() => _FormUtilitiesState();
}

class _FormUtilitiesState extends State<FormUtilities> {
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
                              "Copy of 8. Exposure Module.pdf",
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
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Uploaded by: ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Sabin Simkhada ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )),
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
                              "Uploaded on: ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "March 15, 2022 ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )),
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
          )
        ],
      ),
    );
  }
}
