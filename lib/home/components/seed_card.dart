import 'package:flutter/material.dart';

import 'custom_plants_column.dart';

class SeedCard extends StatelessWidget {
  const SeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
          color: Colors.brown.shade900,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(45))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text("Seeds",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomPlantsColumn(
                color: Colors.green,
                figures: '3021',
                headings: 'Sown',
                icon: Icons.arrow_drop_down,
              ),
              const CustomPlantsColumn(
                color: Colors.brown,
                figures: '131',
                headings: 'Harvest',
                icon: Icons.arrow_drop_up,
              ),
              Image.asset(
                'assets/seeds.png',
                height: 100,
                width: 100,
              )
            ],
          )
        ],
      ),
    );
  }
}
