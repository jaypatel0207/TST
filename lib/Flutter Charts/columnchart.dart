import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Columnchart extends StatefulWidget {
  const Columnchart({super.key});

  @override
  State<Columnchart> createState() => _ColumnchartState();
}

class _ColumnchartState extends State<Columnchart> {


 List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Jay", "age": 22},
    {"id": 2, "name": "Shreya", "age": 20},
    {"id": 3, "name": "Siddhi", "age": 20},
    {"id": 4, "name": "Papa", "age": 47},
    {"id": 5, "name": "Mummy", "age": 44},
    {"id": 6, "name": "Anuj", "age": 27},
    {"id": 7, "name": "Bhabhi", "age": 27},
    {"id": 8, "name": "Arin", "age": 20},
    {"id": 9, "name": "Shreya's Papa", "age": 47},
    {"id": 10, "name": "Shreya's Mom", "age": 45},
    {"id": 11, "name": "Arya", "age": 7},
    {"id": 12, "name": "Khwaish", "age": 12},
    {"id": 13, "name": "Adhya", "age": 2},
    {"id": 14, "name": "Guddi", "age": 20},
    {"id": 15, "name": "Vyoma", "age": 18},
  ];








   List foodData = [
    ["Tea", 120, 80],
    ["Fish", 150, 100],
    ["Grains", 200, 120],
    ["Fuel", 80, 50]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
      
      
       SafeArea(
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
                ColumnSeries(
                  dataSource: foodData,
                  xValueMapper: (data, index) => data[0],
                  yValueMapper: (data, index) => data[1],
                  name: "Food Data",
                  color: Colors.orange,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                  ),
                ),

                ColumnSeries(
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