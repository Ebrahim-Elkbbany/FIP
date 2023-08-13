import 'package:carousel_slider/carousel_slider.dart';
import 'package:fip/core/utils/constant.dart';
import 'package:fip/feature/home/presentation/view/widgets/home_categories_list_view_item.dart';
import 'package:fip/feature/home/presentation/view/widgets/home_categories_section.dart';
import 'package:fip/feature/home/presentation/view/widgets/home_products_grid_view_item.dart';
import 'package:fip/feature/home/presentation/view/widgets/home_products_section.dart';
import 'package:fip/feature/home/presentation/view/widgets/home_slider_section.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            HomeSliderSection(),
            HomeCategoriesSection(),
            HomeProductsSection(),
          ],
        ),
      ),
    );
  }
}










