import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data table"),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              "Students",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          DataTable(
            columns: [
              DataColumn(label: Text("No")),
              DataColumn(label: Text("Fname")),
              DataColumn(label: Text("SurName")),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text("FNS0001/2019")),
                  DataCell(Text("Yengmoua")),
                  DataCell(Text("Yongpor")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0002/2019")),
                  DataCell(Text("Souk")),
                  DataCell(Text("Khonexana")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0003/2019")),
                  DataCell(Text("Ek")),
                  DataCell(Text("Xayavong")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0003/2019")),
                  DataCell(Text("Touny")),
                  DataCell(Text("Phondala")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0004/2019")),
                  DataCell(Text("Kham")),
                  DataCell(Text("Thammavong")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0005/2019")),
                  DataCell(Text("Any")),
                  DataCell(Text("Sakda")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0006/2019")),
                  DataCell(Text("Phong")),
                  DataCell(Text("Chanhthavy")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0007/2019")),
                  DataCell(Text("Xai")),
                  DataCell(Text("Vongthannam")),
                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("FNS0008/2019")),
                  DataCell(Text("Phout")),
                  DataCell(Text("Syvongxai")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
