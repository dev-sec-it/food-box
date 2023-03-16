import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        route: '/userprofile',
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assetName"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 20,
                color: Colors.indigo,
              ),
              ListTile(
                leading: Icon(
                  Icons.perm_identity_sharp,
                  color: Colors.indigo,
                ),
                title: Text(
                  "Name",
                  style: TextStyle(fontSize: 12, color: Colors.indigo),
                ),
                subtitle: Text(
                  "Devsecit",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.local_phone_outlined,
                  color: Colors.indigo,
                ),
                title: Text(
                  "phone",
                  style: TextStyle(fontSize: 12, color: Colors.indigo),
                ),
                subtitle: Text(
                  "+91908909876",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.label_important_outline,
                  color: Colors.indigo,
                ),
                title: Text(
                  "Label",
                  style: TextStyle(fontSize: 12, color: Colors.indigo),
                ),
                subtitle: Text(
                  "Cafeteria Leader",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.trending_up_sharp,
                  color: Colors.indigo,
                ),
                title: Text(
                  "Total sales",
                  style: TextStyle(fontSize: 12, color: Colors.indigo),
                ),
                subtitle: Text(
                  "89876",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.currency_rupee,
                  color: Colors.indigo,
                ),
                title: Text(
                  "Profit",
                  style: TextStyle(fontSize: 12, color: Colors.indigo),
                ),
                subtitle: Text(
                  "Rs.1999",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.download,
                  color: Colors.indigo,
                ),
                title: Text(
                  "Loss",
                  style: TextStyle(fontSize: 12, color: Colors.indigo),
                ),
                subtitle: Text(
                  "Rs.19",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.indigo,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(fontSize: 12, color: Colors.indigo),
                ),
                subtitle: Text(
                  "devsecit@info",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.indigo,
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ),
            ],
          ),
        ));
  }
}
