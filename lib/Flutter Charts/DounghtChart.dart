import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dounghtchart extends StatefulWidget {
  const Dounghtchart({super.key});

  @override
  State<Dounghtchart> createState() => _DounghtchartState();
}

class _DounghtchartState extends State<Dounghtchart> {
  List chartData = [
    [40, "Rent", Colors.blue],
    [12, "Groceries", Colors.pink.shade300],
    [20, "Utilities", Colors.green],
    [25, "Entertainment", Colors.yellow],
    [15, "Transportation", Colors.orange],
    [10, "other", Colors.grey],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCircularChart(
          margin: EdgeInsets.all(0),
          series: [
            DoughnutSeries(

              dataSource: chartData,
              innerRadius: "50%",
              explode: true,
              yValueMapper: (data, _) => data[0],
              xValueMapper: (data, _) => data[1],
              radius: "70%",
              // maximumValue: 50,
              // explode: true,
              pointColorMapper: (data, _) => data[2],
              dataLabelMapper: (data, _) => data[0].toString() + " K",
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
                textStyle: TextStyle(fontSize: 16, color: Colors.black),
                labelPosition: ChartDataLabelPosition.outside,
              ),
            )
          ],
          legend: Legend(
              isVisible: true,
              isResponsive: true,
              position: LegendPosition.bottom,
              orientation: LegendItemOrientation.vertical,
              textStyle: TextStyle(fontSize: 15),
              iconHeight: 20,
              iconWidth: 20),
        ),
    );
  }
}