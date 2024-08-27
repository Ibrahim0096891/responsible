import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.timelapse,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSinglesection('Sales', '464784'),
                _buildSinglesection('Volume', '464784'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSinglesection(String title, String number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(number),
      ],
    );
  }
}
