import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_admin_scaffold_example/main.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/orderhistory',
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
                Container(
                  color: Colors.grey[300],
                  height: 30,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search), hintText: "Search"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              height: 200,
              child: DataTable2(
                  columnSpacing: 3,
                  horizontalMargin: 15,
                  minWidth: 100,
                  columns: [
                    DataColumn2(
                      label: Text(
                        'ID',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      size: ColumnSize.S,
                    ),
                    DataColumn(
                      label: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Date',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Quantity',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Action',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                      3,
                      (index) => DataRow(cells: [
                            DataCell(
                              Text(index.toString()),
                            ),
                            DataCell(Text('Test')),
                            DataCell(
                              Text('3-3-23'),
                            ),
                            DataCell(
                              Text('12pc'),
                            ),
                            DataCell(
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            ),
                          ]))),
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.unfold_more_sharp)),
                SizedBox(
                  width: 5,
                ),
                Text("Page size"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
