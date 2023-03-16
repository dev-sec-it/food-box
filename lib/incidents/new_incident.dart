import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class NewIncident extends StatefulWidget {
  const NewIncident({Key? key}) : super(key: key);

  @override
  State<NewIncident> createState() => _NewIncidentState();
}

class _NewIncidentState extends State<NewIncident> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        route: '/newincident',
        body: Center(
          child: Text(
            'New incident',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 31,
            ),
          ),
        ));
  }
}
