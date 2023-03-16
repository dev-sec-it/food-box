import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CafeteriaOrder extends StatefulWidget {
  const CafeteriaOrder({Key? key}) : super(key: key);

  @override
  State<CafeteriaOrder> createState() => _CafeteriaOrderState();
}

class _CafeteriaOrderState extends State<CafeteriaOrder> {
  TextEditingController name = TextEditingController();
  TextEditingController cost = TextEditingController();
  TextEditingController ingredients = TextEditingController();
  TextEditingController availability = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController cuisine = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/cafeteriaOrder',
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Orders history',
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
                        label: Text("Item name"),
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
                    controller: cost,
                    decoration: InputDecoration(
                        label: Text("Item calories"),
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
                    controller: ingredients,
                    decoration: InputDecoration(
                        label: Text("Item ingredients"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: availability,
                    decoration: InputDecoration(
                        label: Text("Item availability"),
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
                      items: ["breckfast", "snack ", "lunch", 'dinner'],
                      dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                            labelText: "Item type",
                            hintText: "Cafeteria menu type",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      onChanged: print,
                      selectedItem: "breckfast",
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextFormField(
                    controller: cuisine,
                    decoration: InputDecoration(
                        label: Text("Item cuisine"),
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
