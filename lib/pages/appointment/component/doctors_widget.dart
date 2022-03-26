import 'package:flutter/material.dart';

import '../../../models/doctor.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(right: 7, left: 7),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            color: Colors.black,
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.arrow_back_ios)),
                        const Text(
                          "DOCTORS",
                          style: TextStyle(
                            color: Colors.black,
                            // fontFamily: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.call),
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(7)),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: TextField(
                            controller: _textEditingController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: doctorItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Doctor nearby".toUpperCase()),
                              Text(
                                "See all".toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundImage: NetworkImage(
                                    doctorItems[index].profileImg ?? ""),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doctorItems[index].name ?? "SabinSimkhada",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      doctorItems[index].subtitle ??
                                          "SabinSimkhada",
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.blueGrey),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 10,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        "${doctorItems[index].year} years",
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.blueGrey),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const CircleAvatar(
                                        radius: 10,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "${doctorItems[index].like} %",
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.blueGrey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Total fee"),
                                  Text(
                                    "\$${doctorItems[index].price}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFF21409A),
                                    borderRadius: BorderRadius.circular(24)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: const Center(
                                  child: Text(
                                    "Make an appointment",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              flex: 12,
            ),
          ],
        ),
      ),
    );
  }
}
