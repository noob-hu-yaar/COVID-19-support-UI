import 'package:aesehi/config/palette.dart';
import 'package:aesehi/config/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CovidBarChart extends StatelessWidget {
  final List<double> covidCases;

  const CovidBarChart({@required this.covidCases});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(30.0, 45.0),
          topRight: Radius.elliptical(30.0, 45.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(21.0),
            child: Text(
              'Daily New Cases',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.86,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 15.0,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    margin: 10.0,
                    showTitles: true,
                    textStyle: Styles.chartLabelsTextStyle,
                    rotateAngle: 45.0,
                    getTitles: (double value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'Aug 10';

                        case 1:
                          return 'Aug 11';
                        case 2:
                          return 'Aug 12';
                        case 3:
                          return 'Aug 13';
                        case 4:
                          return 'Aug 14';
                        case 5:
                          return 'Aug 15';
                        case 6:
                          return 'Aug 16';
                        case 7:
                          return 'Aug 17';
                        default:
                          return '';
                      }
                    },
                  ),
                  leftTitles: SideTitles(
                      margin: 10.0,
                      showTitles: true,
                      textStyle: Styles.chartLabelsTextStyle,
                      getTitles: (value) {
                        if (value == 0) {
                          return '0';
                        } else if (value % 3 == 0) {
                          return '${value ~/ 3 * 5}K';
                        }
                        return '';
                      }),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 3 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Colors.black,
                    strokeWidth: 1.5,
                    dashArray: [7],
                  ),
                ),
                barGroups: covidCases
                    .asMap()
                    .map((key, value) => MapEntry(
                          key,
                          BarChartGroupData(x: key, barRods: [
                            BarChartRodData(y: value, color: Colors.red),
                          ]),
                        ))
                    .values
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
