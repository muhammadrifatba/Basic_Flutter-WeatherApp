import 'package:flutter/material.dart';

class HourlyForecastWidget extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;
  const HourlyForecastWidget(
      {super.key,
      required this.time,
      required this.icon,
      required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Icon(
              icon,
              size: 36,
            ),
            const SizedBox(height: 8),
            Text(
              temperature,
              style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
