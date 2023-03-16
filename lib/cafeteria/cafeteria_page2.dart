import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class CafeteriaPage2 extends StatefulWidget {
  const CafeteriaPage2({Key? key}) : super(key: key);

  @override
  State<CafeteriaPage2> createState() => _CafeteriaPage2State();
}

class _CafeteriaPage2State extends State<CafeteriaPage2> {
  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController certification = TextEditingController();
  TextEditingController time = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/Cafeteria2',
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(70, 2, 70, 2),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Add Cafeteria',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 31,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        label: Text("Cafeteria name"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: location,
                    decoration: InputDecoration(
                        label: Text("Cafeteria location"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),

            // SizedBox(
            //   height: 10,
            // ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: contact,
                    decoration: InputDecoration(
                        label: Text("Cafeteria contact details"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: certification,
                    decoration: InputDecoration(
                        label: Text("Cafeteria certifications"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),

            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: time,
                    decoration: InputDecoration(
                        label: Text("Cafeteria open and close timing"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(padding: EdgeInsets.all(20)),
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Add and Back")),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
