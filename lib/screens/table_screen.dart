import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(label: Text("Column")),
              DataColumn(label: Text("Column")),
              DataColumn(label: Text("Column")),
              DataColumn(label: Text("Column")),
              DataColumn(label: Text("Column")),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                  DataCell(Text("Cell")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
