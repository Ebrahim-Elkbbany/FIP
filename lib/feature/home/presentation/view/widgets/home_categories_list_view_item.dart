import 'package:flutter/material.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/Rectangle_31.png',
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            alignment: Alignment.center,
            width: 100,
            color: Colors.black.withOpacity(0.8),
            child: const Text(
              'Men',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}