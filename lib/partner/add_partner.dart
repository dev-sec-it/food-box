import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class AddPartner extends StatefulWidget {
  const AddPartner({Key? key}) : super(key: key);

  @override
  State<AddPartner> createState() => _AddPartnerState();
}

class _AddPartnerState extends State<AddPartner> {
  TextEditingController name = TextEditingController();

  TextEditingController contact = TextEditingController();
  TextEditingController pan = TextEditingController();
  TextEditingController license = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController partnerhead = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/addPartner',
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
              'Add partner',
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
                        label: Text("Partner name"),
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
                        label: Text("Partner contact details"),
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
                    controller: pan,
                    decoration: InputDecoration(
                        label: Text("Partner Pan details"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: license,
                    decoration: InputDecoration(
                        label: Text("Partner license"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),

            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: address,
                    decoration: InputDecoration(
                        label: Text("Partner address"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        label: Text("Partner email"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: partnerhead,
                    decoration: InputDecoration(
                        label:
                            Text("Partner head name and their contact details"),
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
