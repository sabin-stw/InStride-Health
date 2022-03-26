import 'package:flutter/material.dart';

import '../../routes.dart';

class ProfileDashboard extends StatefulWidget {
  const ProfileDashboard({Key? key}) : super(key: key);

  @override
  State<ProfileDashboard> createState() => _ProfileDashboardState();
}

class _ProfileDashboardState extends State<ProfileDashboard> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
      ),
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 2.0),
                  ),
                  Container(
                    width: circleRadius,
                    height: circleRadius,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(), color: Color(0xFF21409A)),
                    child: Padding(
                      padding: EdgeInsets.all(circleBorderWidth),
                      child: const DecoratedBox(
                        decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/logo.png"))),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Sabin Simkhada",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.email,
                        color: Color(0xFF21409A),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "sbnsim81@gmai.com",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        color: Color(0xFF21409A),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "9852051425",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const SizedBox(
                height: 6,
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.payment_outlined,
                            color: Color(0xFF21409A),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Payments",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const TicketList()));
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xFF21409A),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.password,
                            color: Color(0xFF21409A),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Change Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const ChangePassword()));
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xFF21409A),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.phone_callback_outlined,
                    color: Color(0xFF21409A),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Help & Support",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF21409A),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.info_outline,
                    color: Color(0xFF21409A),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "About InStride Health",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const AboutUs()));
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF21409A),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.download_outlined,
                    color: Color(0xFF21409A),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Check for Updates",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    // LaunchReview.launch(
                    //   androidAppId: "com.eagleeye.alinetrip",
                    //   iOSAppId: "com.eagleeye.alinetrip",
                    // ),
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF21409A),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.logout,
                    color: Color(0xFF21409A),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Confirm"),
                              content: const Text(
                                  "Are you sure you want to logout?"),
                              actions: [
                                TextButton(
                                  child: const Text("Cancel"),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                TextButton(
                                  child: const Text("Continue"),
                                  onPressed: () async {
                                    // final user = await User.clear();
                                    // user?.token;

                                    Navigator.of(context).pop();

                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                            AppRoutes.identity,
                                            (route) => false);
                                  },
                                )
                              ],
                            );
                          });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF21409A),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
