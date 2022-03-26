import 'package:deerholdlearn/pages/document/component/file_widget.dart';
import 'package:deerholdlearn/pages/document/component/form_widget.dart';
import 'package:flutter/material.dart';

class DocumentDashboard extends StatefulWidget {
  const DocumentDashboard({Key? key}) : super(key: key);

  @override
  State<DocumentDashboard> createState() => _DocumentDashboardState();
}

class _DocumentDashboardState extends State<DocumentDashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Documents",
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
                        child: Text("Forms"),
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
                        child: Text("Files"),
                      ),
                    ),
                  ),
                ]),
          ),
          backgroundColor: Colors.white,
          body: const TabBarView(children: [
            SizedBox(child: FileWidget()),
            SizedBox(child: FormWidget()),
          ]),
        ));
  }
}
