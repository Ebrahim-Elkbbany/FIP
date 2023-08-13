import 'package:flutter/material.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Rectangle_31.png',
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Man',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_outlined,
          )
        ],
      ),
    );
  }
}