import 'package:fip/feature/home/presentation/view/widgets/home_categories_section.dart';
import 'package:fip/feature/home/presentation/view/widgets/home_products_section.dart';
import 'package:fip/feature/home/presentation/view/widgets/home_slider_section.dart';
import 'package:fip/feature/layout/manger/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit=LayoutCubit.get(context);
        return Scaffold(
          body:  SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeSliderSection(cubit:cubit),
                HomeCategoriesSection(cubit:cubit),
                HomeProductsSection(cubit:cubit),
              ],
            ),
          ),
        );
      },
    );
  }
}










