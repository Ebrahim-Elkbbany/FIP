

import 'package:fip/feature/home/presentation/view/widgets/home_products_grid_view_item.dart';
import 'package:flutter/material.dart';

class HomeProductsSection extends StatelessWidget {
  const HomeProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          childAspectRatio: 1 / 1.6,
          crossAxisSpacing: 1,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => const HomeProductsGridViewItem(),
      ),
      // child: GridView.count(
      //   shrinkWrap: true,
      //   physics: const NeverScrollableScrollPhysics(),
      //   crossAxisCount: 2,
      //   mainAxisSpacing: 1,
      //   childAspectRatio: 1 / 1.6,
      //   crossAxisSpacing: 1,
      //   children: List.generate(
      //     10,
      //         (index) {
      //       return const ProductsCategoryGridView();
      //     },
      //   ),
      // ),
    );
  }
}