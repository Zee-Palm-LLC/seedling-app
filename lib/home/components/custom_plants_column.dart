import 'package:flutter/material.dart';

class CustomPlantsColumn extends StatelessWidget {
  final String headings;
  final String figures;
  final Color color;
  final IconData icon;
  const CustomPlantsColumn(
      {super.key,
      required this.headings,
      required this.figures,
      required this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headings,
          style: const TextStyle(color: Colors.white,fontSize: 12),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Icon(icon, size: 14, color: Colors.white),
            ),
            const SizedBox(width: 10),
            Text(
              figures,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }
}
