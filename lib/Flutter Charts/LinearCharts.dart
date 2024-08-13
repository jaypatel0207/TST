import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Linearcharts extends StatefulWidget {
  const Linearcharts({super.key});

  @override
  State<Linearcharts> createState() => _LinearchartsState();
}

class _LinearchartsState extends State<Linearcharts> {
  List foodData = [
    ["Tea", 120, 80],
    ["Fish", 150, 100],
    ["Grains", 200, 120],
    ["Fuel", 80, 50]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(),
              tooltipBehavior: TooltipBehavior(enable: true),
              legend: Legend(
                isVisible: true,
                isResponsive: true,
              ),
              series: [
                BarSeries(
                  dataSource: foodData,
                  xValueMapper: (data, index) => data[0],
                  yValueMapper: (data, index) => data[1],
                  name: "Food Data",
                  color: Colors.orange,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                  ),
                ),

                BarSeries(
                  dataSource: foodData,
                  xValueMapper: (data, index) => data[0],
                  yValueMapper: (data, index) => data[2],
                  name: "Food Production",
                  color: Colors.green,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
