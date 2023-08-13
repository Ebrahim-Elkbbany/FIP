import 'package:fip/feature/home/presentation/view/widgets/home_categories_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Categories',
              style:
              TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (context, index) =>
              const SizedBox(width: 15),
              itemBuilder: (context, index) =>
              const CategoriesListViewItem(),
            ),
          ),
          const SizedBox(height: 20),
          const Text('New Products',
              style:
              TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}