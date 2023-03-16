import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class KitchenCertificationAdd extends StatefulWidget {
  const KitchenCertificationAdd({Key? key}) : super(key: key);

  @override
  State<KitchenCertificationAdd> createState() =>
      _KitchenCertificationAddState();
}

class _KitchenCertificationAddState extends State<KitchenCertificationAdd> {
  TextEditingController type = TextEditingController();
  TextEditingController validity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return MyScaffold(
      route: '/kitchencertificationadd',
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Add kitchen certification',
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
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.words,
                    controller: type,
                    decoration: InputDecoration(
                      filled: true,
                      label: Text("Certification type"),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                )),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.words,
                    controller: validity,
                    decoration: InputDecoration(
                      filled: true,
                      label: Text("Customer contact number"),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                )),
            // SizedBox(
            //   height: 10,
            // ),

            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Save and Back"))
          ],
        ),
      ),
    );
  }
}
