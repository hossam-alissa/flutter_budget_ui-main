import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<double> expenses;

  BarChart(this.expenses);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Weekly Spending",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
              onPressed: () {},
            ),
            Text(
              "Nov 10, 2021 - Nov 16,2021",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 30.0),
        Row(
          children: [
            Bar(label: 'Su', amountSpent: expenses[0],mostExpensive: 200),
          ],
        ),
      ],
    );
  }
}

class Bar extends StatelessWidget {
  final String label;
  final double amountSpent;
  final double mostExpensive;

  Bar({this.label, this.amountSpent, this.mostExpensive});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
