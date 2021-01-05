import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  static final String TAG = "/chart_page";
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chart"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                border: TableBorder(
                    bottom: BorderSide(width: 1),
                    horizontalInside: BorderSide(width: 1)),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: {
                  0: FlexColumnWidth(0.45),
                  1: FlexColumnWidth(0.20),
                  2: FlexColumnWidth(0.15),
                  3: FlexColumnWidth(0.2),
                },
                children: [
                  TableRow(children: [
                    Text("Nama Barang"),
                    Text("Total"),
                    Text("QTY"),
                    Text("Jumlah"),
                  ]),
                  TableRow(children: [
                    Container(
                      child: Text(
                          "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    ),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                  TableRow(children: [
                    Text(
                        "Nama Barang Yang aku mau beli disni kalau panjang aku gak tau. "),
                    Text("10.000"),
                    Text("12"),
                    Text("120.0000"),
                  ]),
                ],
              ),
          
            ),
          ),
          Container(

            width: double.infinity,
            child: FlatButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {}, child: Text("Go to "), color: Colors.green),
          )
        ],
      ),
    );
  }
}
