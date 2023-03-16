import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/',
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: [
              Text(
                "Welcome to dashboard & administration",
                style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClayContainer(
                      borderRadius: 15,
                      height: 150,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(70, 2, 70, 2),
                        height: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Pending Kitchen Certification",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 21),
                        ),
                      )),
                  ClayContainer(
                      borderRadius: 15,
                      height: 150,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(70, 2, 70, 2),
                        height: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Feedback needing attention",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 21),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
