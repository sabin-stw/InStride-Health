import 'package:flutter/material.dart';

class ArchivedUtilities extends StatelessWidget {
  const ArchivedUtilities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                // color: const Color(0xFF21409A),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.only(left: 10, right: 10, top: 2),
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "James inStride",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Coaching Session",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Mar 1, 2022 • 9 30 AM ",
                              style: TextStyle(
                                  fontSize: 12,
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
              ])),
        ],
      ),
    );
  }
}
