import 'package:deerholdlearn/pages/appointment/component/appointment_card_widget.dart';
import 'package:deerholdlearn/pages/appointment/component/doctors_widget.dart';
import 'package:flutter/material.dart';

class AppointmentDashboard extends StatefulWidget {
  const AppointmentDashboard({Key? key}) : super(key: key);

  @override
  State<AppointmentDashboard> createState() => _AppointmentDashboardState();
}

class _AppointmentDashboardState extends State<AppointmentDashboard> {
  int tabIndex = 0;

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   body: Column(
    //     children: [
    //       Expanded(
    //         flex: 20,
    //         child: ValueListenableBuilder<int>(
    //             valueListenable: _bottomIndex,
    //             builder: (context, value, child) {
    //               return Column(
    //                 children: [
    //                   Expanded(
    //                     flex: 9,
    //                     child: Container(
    //                       color: Colors.teal[300],
    //                       child: Column(
    //                         children: [
    //                           SizedBox(
    //                             height: 64,
    //                           ),
    //                           Expanded(
    //                               flex: 4,
    //                               child: Padding(
    //                                 padding: const EdgeInsets.symmetric(
    //                                     horizontal: 16, vertical: 8),
    //                                 child: Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Column(
    //                                       mainAxisAlignment:
    //                                           MainAxisAlignment.center,
    //                                       crossAxisAlignment:
    //                                           CrossAxisAlignment.start,
    //                                       children: [
    //                                         Text("👋 Hello,",
    //                                             style: TextStyle(
    //                                                 color: Colors.white)),
    //                                         SizedBox(height: 12),
    //                                         Text(
    //                                           "Sabin Simkhada",
    //                                           style: TextStyle(
    //                                               fontSize: 16,
    //                                               fontWeight: FontWeight.bold,
    //                                               color: Colors.white),
    //                                         )
    //                                       ],
    //                                     ),
    //                                     CircleAvatar()
    //                                   ],
    //                                 ),
    //                               )),
    //                           Expanded(
    //                               flex: 4,
    //                               child: Padding(
    //                                 padding: const EdgeInsets.all(8.0),
    //                                 child: Container(
    //                                   decoration: BoxDecoration(
    //                                       color: Colors.white,
    //                                       borderRadius:
    //                                           BorderRadius.circular(32)),
    //                                   padding: const EdgeInsets.symmetric(
    //                                       horizontal: 16),
    //                                   child: const Center(
    //                                     child: const TextField(
    //                                       decoration: InputDecoration(
    //                                           border: InputBorder.none,
    //                                           hintText: "Search",
    //                                           icon: Icon(Icons.search)),
    //                                     ),
    //                                   ),
    //                                 ),
    //                               )),
    //                           Expanded(
    //                             flex: 6,
    //                             child: ListView.builder(
    //                               scrollDirection: Axis.horizontal,
    //                               itemBuilder: (context, index) {
    //                                 return Padding(
    //                                   padding: const EdgeInsets.symmetric(
    //                                       vertical: 4, horizontal: 8),
    //                                   child: Column(
    //                                     mainAxisAlignment:
    //                                         MainAxisAlignment.spaceAround,
    //                                     children: [
    //                                       Text(
    //                                         calItems[index].weekday,
    //                                         style:
    //                                             TextStyle(color: Colors.white),
    //                                       ),
    //                                       CircleAvatar(
    //                                         child: Text(calItems[index].day),
    //                                         backgroundColor:
    //                                             Colors.white.withOpacity(0.2),
    //                                         foregroundColor: Colors.white,
    //                                       ),
    //                                       Row(
    //                                         children: [
    //                                           CircleAvatar(
    //                                             radius: 2,
    //                                             backgroundColor:
    //                                                 calItems[index].isEvent
    //                                                     ? Colors.white
    //                                                     : Colors.transparent,
    //                                           ),
    //                                           SizedBox(
    //                                             width: 8,
    //                                           ),
    //                                           CircleAvatar(
    //                                             radius: 2,
    //                                             backgroundColor:
    //                                                 calItems[index].isEvent
    //                                                     ? Colors.white
    //                                                     : Colors.transparent,
    //                                           )
    //                                         ],
    //                                       )
    //                                     ],
    //                                   ),
    //                                 );
    //                               },
    //                               itemCount: calItems.length,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 8,
    //                   ),
    //                   Expanded(
    //                       flex: 12,
    //                       child: ListView(
    //                         padding: EdgeInsets.zero,
    //                         children: [
    //                           Container(
    //                             color: Colors.white,
    //                             padding: EdgeInsets.symmetric(
    //                                 horizontal: 16, vertical: 16),
    //                             child: Column(
    //                               children: [
    //                                 Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     Text(
    //                                       "Services".toUpperCase(),
    //                                       style: TextStyle(
    //                                           fontWeight: FontWeight.bold),
    //                                     ),
    //                                     Text(
    //                                       "See All".toUpperCase(),
    //                                       style: TextStyle(
    //                                           fontWeight: FontWeight.bold,
    //                                           color: Colors.orange),
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 SizedBox(
    //                                   height: 16,
    //                                 ),
    //                                 Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceEvenly,
    //                                   children: [
    //                                     Column(
    //                                       children: [
    //                                         Container(
    //                                           height: 64,
    //                                           width: 64,
    //                                           child: Stack(
    //                                             children: [
    //                                               Positioned(
    //                                                 left: 0,
    //                                                 right: 0,
    //                                                 top: 0,
    //                                                 bottom: 0,
    //                                                 child: CircleAvatar(
    //                                                   backgroundColor:
    //                                                       Colors.teal[200]!,
    //                                                 ),
    //                                               ),
    //                                               Positioned(
    //                                                 left: 8,
    //                                                 right: 8,
    //                                                 top: 8,
    //                                                 bottom: 8,
    //                                                 child: Icon(
    //                                                   Icons.dangerous_outlined,
    //                                                   color: Colors.green,
    //                                                   size: 30.0,
    //                                                 ),
    //                                               )
    //                                             ],
    //                                           ),
    //                                         ),
    //                                         SizedBox(
    //                                           height: 16,
    //                                         ),
    //                                         Text("Covid-19")
    //                                       ],
    //                                     ),
    //                                     Column(
    //                                       children: [
    //                                         GestureDetector(
    //                                           onTap: () => Navigator.push(
    //                                             context,
    //                                             MaterialPageRoute(
    //                                                 builder: (context) =>
    //                                                     const DoctorsPage()),
    //                                           ),
    //                                           child: Container(
    //                                             height: 64,
    //                                             width: 64,
    //                                             child: Stack(
    //                                               children: [
    //                                                 Positioned(
    //                                                   left: 0,
    //                                                   right: 0,
    //                                                   top: 0,
    //                                                   bottom: 0,
    //                                                   child: CircleAvatar(
    //                                                     backgroundColor:
    //                                                         Colors.teal[200]!,
    //                                                   ),
    //                                                 ),
    //                                                 Positioned(
    //                                                   left: 8,
    //                                                   right: 8,
    //                                                   top: 8,
    //                                                   bottom: 8,
    //                                                   child: Icon(
    //                                                     Icons.person,
    //                                                     color: Colors.green,
    //                                                     size: 30.0,
    //                                                   ),
    //                                                 ),
    //                                               ],
    //                                             ),
    //                                           ),
    //                                         ),
    //                                         SizedBox(
    //                                           height: 16,
    //                                         ),
    //                                         Text("Doctors")
    //                                       ],
    //                                     ),
    //                                     Column(
    //                                       children: [
    //                                         Container(
    //                                           height: 64,
    //                                           width: 64,
    //                                           child: Stack(
    //                                             children: [
    //                                               Positioned(
    //                                                 left: 0,
    //                                                 right: 0,
    //                                                 top: 0,
    //                                                 bottom: 0,
    //                                                 child: CircleAvatar(
    //                                                   backgroundColor:
    //                                                       Colors.teal[200]!,
    //                                                 ),
    //                                               ),
    //                                               Positioned(
    //                                                 left: 8,
    //                                                 right: 8,
    //                                                 top: 8,
    //                                                 bottom: 8,
    //                                                 child: Icon(
    //                                                   Icons
    //                                                       .local_hospital_outlined,
    //                                                   color: Colors.green,
    //                                                   size: 30.0,
    //                                                 ),
    //                                               )
    //                                             ],
    //                                           ),
    //                                         ),
    //                                         SizedBox(
    //                                           height: 16,
    //                                         ),
    //                                         Text("Hospitals")
    //                                       ],
    //                                     ),
    //                                     Column(
    //                                       children: [
    //                                         Container(
    //                                           height: 64,
    //                                           width: 64,
    //                                           child: Stack(
    //                                             children: [
    //                                               Positioned(
    //                                                 left: 0,
    //                                                 right: 0,
    //                                                 top: 0,
    //                                                 bottom: 0,
    //                                                 child: CircleAvatar(
    //                                                   backgroundColor:
    //                                                       Colors.teal[200]!,
    //                                                 ),
    //                                               ),
    //                                               Positioned(
    //                                                 left: 8,
    //                                                 right: 8,
    //                                                 top: 8,
    //                                                 bottom: 8,
    //                                                 child: Icon(
    //                                                   Icons
    //                                                       .medical_services_outlined,
    //                                                   color: Colors.green,
    //                                                   size: 30.0,
    //                                                 ),
    //                                               )
    //                                             ],
    //                                           ),
    //                                         ),
    //                                         SizedBox(
    //                                           height: 16,
    //                                         ),
    //                                         Text("Medicines")
    //                                       ],
    //                                     )
    //                                   ],
    //                                 )
    //                               ],
    //                             ),
    //                           )
    //                         ],
    //                       )),
    //                 ],
    //               );
    //             }),
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Appointments",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            // onPressed: _increamentCounter,
            icon: const Icon(
              Icons.person,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DoctorsPage()));
            },
            color: const Color.fromARGB(255, 67, 228, 80),
          ),
        ],
      ),
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "👋 Hi..!",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Sabin",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Simkhada",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Expanded(
              //     flex: 2,
              //     child: Align(
              //       alignment: Alignment.centerLeft,
              //       child: Text(
              //         "Appointments",
              //       ),
              //     )),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(7)),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                "Upcoming",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blueAccent)),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                "Pending",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blueAccent)),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                "Past",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
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
              Expanded(
                flex: 15,
                child: ListView.builder(
                    itemCount: 10,
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    itemBuilder: (context, index) {
                      return const AppointmentCardWidget();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
