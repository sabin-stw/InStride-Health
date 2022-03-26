import 'package:flutter/material.dart';

import 'package:deerholdlearn/pages/appointment/appointment.dart';
import 'package:deerholdlearn/pages/chat/chat.dart';
import 'package:deerholdlearn/pages/document/document.dart';
import 'package:deerholdlearn/pages/profile/profile.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final bucket = PageStorageBucket();
  static const screen = [
    AppointmentDashboard(key: PageStorageKey('appointment')),
    ChatDashboard(key: PageStorageKey('chat')),
    DocumentDashboard(key: PageStorageKey('documents')),
    ProfileDashboard(key: PageStorageKey('profile')),
  ];
  String title = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: screen[_currentIndex],
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xFF21409A),
        selectedItemColor: const Color.fromARGB(255, 117, 240, 129),
        unselectedItemColor: Colors.white,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: ("Appointments"),
            icon: Icon(
              Icons.date_range_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ('Messages'),
            icon: Icon(Icons.message_outlined),
          ),
          BottomNavigationBarItem(
            label: ('Documents'),
            icon: Icon(Icons.document_scanner_outlined),
          ),
          BottomNavigationBarItem(
            label: ('Profile'),
            icon: Icon(Icons.perm_identity_outlined),
          ),
        ],
      ),
    );
  }
}
