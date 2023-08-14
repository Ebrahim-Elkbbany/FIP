import 'package:fip/core/utils/constant.dart';
import 'package:flutter/material.dart';

class Names extends StatelessWidget {
  const Names({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Names'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Container(
            height: 300,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(16)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Team Member\'s :',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '1: khalid gamal mohammed ali',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '2: Ebrahim Adel Hamed Mahmoud Hamed Elkbany ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '3: Hussain mohamed ezeldeen mohamed metwalli ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
