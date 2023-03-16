import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class AddKitchen extends StatefulWidget {
  const AddKitchen({Key? key}) : super(key: key);

  @override
  State<AddKitchen> createState() => _AddKitchenState();
}

class _AddKitchenState extends State<AddKitchen> {
  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController certification = TextEditingController();
  TextEditingController time = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/addKitchen',
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
              ' Add Kitchen',
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
                        label: Text("Kitchen  name"),
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
                        label: Text("Kitchen location"),
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
                        label: Text("Kitchen contact details"),
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
                        label: Text("Kitchen certifications"),
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
                        label: Text("Kitchen open and close timing"),
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
