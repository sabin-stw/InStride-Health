import 'package:flutter/material.dart';

class AppointmentCardWidget extends StatelessWidget {
  const AppointmentCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
                              "James inStride",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(
                              Icons.video_call,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
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
                              "Coaching Session",
                              style: TextStyle(
                                  fontSize: 15,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Mar 1, 2022 • 9 30 AM • 30 minutes ",
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "InStride",
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          // margin: const EdgeInsets.all(15.0),
                          // padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue[600],
                              border: Border.all(color: Colors.blueAccent)),
                          child: const Text('Recording ',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        )
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
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(
                              Icons.attachment_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(
                              Icons.document_scanner,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFF21409A),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(children: const <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text("Join Video Session in 3 Days",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                      ]),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text("",
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
