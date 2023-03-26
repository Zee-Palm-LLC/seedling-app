import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:seedling_app/data/chart_data.dart';

import 'components/custom_dropdown.dart';
import 'components/custom_icons.dart';
import 'components/custom_plants_column.dart';
import 'components/plants_card.dart';
import 'components/seed_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:
              const Padding(padding: EdgeInsets.all(5), child: CustomIcons()),
          actions: const [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.brown,
                )),
            SizedBox(width: 20)
          ]),
      body: Stack(
        children: [
          Container(
            color: Colors.brown.shade500,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 30),
                Text(
                  "Hello, Angel",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w600),
                ),
                Text("Balance your world",
                    style: TextStyle(color: Colors.white)),
                SizedBox(height: 40),
                CustomDropDown()
              ],
            ),
          ),
          const Positioned(
              top: 250, bottom: 0, right: 0, left: 0, child: PlantsCard()),
          const Positioned(
              top: 410, bottom: 0, right: 0, left: 0, child: SeedCard()),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SizedBox(height: 110, child: LineChart(mainData()))),
        ],
      ),
    );
  }
}
