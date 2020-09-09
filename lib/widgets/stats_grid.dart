import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.grey[800],
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatCard('Total Cases', '27.6 M', Colors.purple[300]),
                _buildStatCard('Total Deaths', '898 K', Colors.red[400]),
              ],
              
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatCarde('Total Recovered', '18.6 M', Colors.green[400]),
                //_buildStatCard('Total Deaths', '898 K', Colors.red),
              ],
              
            ),
          )
        ],
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(7.0),
        padding: const EdgeInsets.all(9.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

   Expanded _buildStatCarde(String title, String count, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
        padding: const EdgeInsets.all(9.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

    
  }
}
