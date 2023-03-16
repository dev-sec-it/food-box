import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController fullname = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController changepassword = TextEditingController();
  TextEditingController select = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/addUser',
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
              'Add users',
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
                    controller: fullname,
                    decoration: InputDecoration(
                        label: Text("User full name"),
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
                        label: Text("User contact number"),
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
                    controller: email,
                    decoration: InputDecoration(
                        label: Text("User email"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        label: Text("User password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: changepassword,
                    decoration: InputDecoration(
                        label: Text("User Change password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    DropdownSearch<String>(
                      popupProps: PopupProps.menu(
                        showSelectedItems: true,
                        disabledItemFn: (String s) => s.startsWith('I'),
                      ),
                      items: [
                        "Customer admin",
                        "Partnet manager ",
                        "Partner leader",
                        'Cafeteria manager',
                        'Cafeteria manager'
                      ],
                      dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                            labelText: "Select from standard roles",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      onChanged: print,
                      selectedItem: "Customer admin",
                    ),
                  ],
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
