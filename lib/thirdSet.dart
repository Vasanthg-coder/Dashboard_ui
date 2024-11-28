import 'package:flutter/material.dart';

class StatisticsBox extends StatelessWidget {
  final String title;
  final String value;

  StatisticsBox({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade200,
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 18),
          Row(
            children: [
              Container(
                height: 20,
                decoration: const BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    color: Colors.blue,
                    width: 3.0,
                  ),
                )),
              ),
              const Spacer(),
              Text(
                value,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ActivityChart extends StatelessWidget {
  const ActivityChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<double> barValues = [50, 70, 60, 100, 30, 40, 50];
    final List<String> days = [
      "Mon",
      "Tues",
      "Wed",
      "Thurs",
      "Fri",
      "Sat",
      "Sun"
    ];

    final double maxBarHeight = barValues.reduce((a, b) => a > b ? a : b);

    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                barValues.length,
                (index) => Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: barValues[index] / maxBarHeight,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 30,
                          decoration: BoxDecoration(
                            color: index == 3
                                ? Colors.blue
                                : Colors.lightBlue[200],
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      days[index],
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
