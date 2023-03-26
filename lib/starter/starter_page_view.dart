import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seedling_app/home/home_view.dart';

class StarterPageView extends StatelessWidget {
  const StarterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Think Natural",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Balance\nyour world",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 120),
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                  color: Color(0xff382A32),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.white),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(()=>HomeView());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
