import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/loginpage',
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to efreshfoods.in',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 31,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(90, 2, 90, 10),
                child: Container(
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        label: Text("email"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(90, 2, 90, 10),
                child: Container(
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        label: Text("password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(padding: EdgeInsets.fromLTRB(90, 2, 90, 50)),
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
                  onPressed: () {},
                  child: Text("Login")),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "forgot password?",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
