import 'package:flutter/material.dart';

import 'component/active_widget.dart';
import 'component/archived_widget.dart';

class ChatDashboard extends StatefulWidget {
  const ChatDashboard({Key? key}) : super(key: key);

  @override
  State<ChatDashboard> createState() => _ChatDashboardState();
}

class _ChatDashboardState extends State<ChatDashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Messages",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue[600]),
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: const Color.fromARGB(255, 121, 113, 160),
                              width: 1)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Active"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: const Color.fromARGB(255, 121, 113, 160),
                              width: 1)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Archived"),
                      ),
                    ),
                  ),
                ]),
          ),
          backgroundColor: Colors.white,
          body: const TabBarView(children: [
            SizedBox(child: ActiveWidget()),
            SizedBox(child: ArchivedWidget()),
          ]),
        ));
  }
}
