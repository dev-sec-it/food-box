import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

import 'Widgets/CustomWidget.dart';
// import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

class NewOrders extends StatefulWidget {
  const NewOrders({Key? key}) : super(key: key);

  @override
  State<NewOrders> createState() => _NewOrdersState();
}

class _NewOrdersState extends State<NewOrders> {
  bool order_freq = false;
  bool order_fre = false;
  bool order_fr = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return MyScaffold(
      route: '/newOrders',
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
              'New order',
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
            Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Order delivery date",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () async {
                            DateTime? newDateTime = await showRoundedDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(DateTime.now().year - 1),
                              lastDate: DateTime(DateTime.now().year + 1),
                              borderRadius: 16,
                            );
                          },
                          child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("dd/mm/yy"),
                                  Icon(Icons.date_range_outlined),
                                ],
                              )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Order freaquency",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Checkbox(
                            value: order_freq,
                            onChanged: (a) {
                              setState(() {
                                order_freq == true
                                    ? order_freq = false
                                    : order_freq = true;
                              });
                            }),
                        Text(
                          "weekly",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Checkbox(
                            value: order_fre,
                            onChanged: (b) {
                              setState(() {
                                order_freq == true
                                    ? order_fre = false
                                    : order_fre = true;
                              });
                            }),
                        Text(
                          "specific days of week",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Checkbox(
                            value: order_fr,
                            onChanged: (c) {
                              setState(() {
                                order_freq == true
                                    ? order_fr = false
                                    : order_fr = true;
                              });
                            }),
                        Text(
                          "daily",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    CustomOrderWidget(
                      title: "Delivery to cafeteria:",
                      widget: Container(
                        height: 45,
                        width: 400,
                        child: DropdownSearch<String>(
                          popupProps: PopupProps.menu(
                            showSelectedItems: true,
                            disabledItemFn: (String s) => s.startsWith('c'),
                          ),
                          items: ["snack ", "lunch", 'dinner'],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onChanged: print,
                          selectedItem: "Combo box",
                        ),
                      ),
                    ),
                    CustomOrderWidget(
                      title: "Cafeteria menu item",
                      widget: Container(
                        height: 45,
                        width: 400,
                        child: DropdownSearch<String>(
                          popupProps: PopupProps.menu(
                            showSelectedItems: true,
                            disabledItemFn: (String s) => s.startsWith('c'),
                          ),
                          items: ["snack ", "lunch", 'dinner'],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onChanged: print,
                          selectedItem: "Combo box",
                        ),
                      ),
                    ),
                    CustomOrderWidget(
                      title: "Delivered from kitchen",
                      widget: Container(
                        height: 45,
                        width: 400,
                        child: DropdownSearch<String>(
                          popupProps: PopupProps.menu(
                            showSelectedItems: true,
                            disabledItemFn: (String s) => s.startsWith('c'),
                          ),
                          items: ["snack ", "lunch", 'dinner'],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onChanged: print,
                          selectedItem: "Combo box",
                        ),
                      ),
                    ),
                    CustomOrderWidget(
                      title: "Kitchen menu item",
                      widget: Container(
                        height: 45,
                        width: 400,
                        child: DropdownSearch<String>(
                          popupProps: PopupProps.menu(
                            showSelectedItems: true,
                            disabledItemFn: (String s) => s.startsWith('c'),
                          ),
                          items: ["snack ", "lunch", 'dinner'],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onChanged: print,
                          selectedItem: "Combo box",
                        ),
                      ),
                    ),
                    CustomOrderWidget(
                      title: "Quantity needed",
                      widget: Container(
                        height: 45,
                        width: 400,
                        child: DropdownSearch<String>(
                          popupProps: PopupProps.menu(
                            showSelectedItems: true,
                            disabledItemFn: (String s) => s.startsWith('c'),
                          ),
                          items: [
                            "1 ",
                            "2",
                            '3',
                            '4',
                            '5',
                            "6",
                          ],
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onChanged: print,
                          selectedItem: "1",
                        ),
                      ),
                    ),
                  ]),
            ),
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
