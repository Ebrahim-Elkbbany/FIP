import 'package:fip/feature/categories/presentation/view/widgets/categories_list_view_item.dart';
import 'package:fip/feature/layout/manger/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        var cubit=LayoutCubit.get(context);
        return ListView.separated(
            padding: const EdgeInsetsDirectional.only(top: 40),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                CategoriesListViewItem(cubit: cubit, index: index),
            separatorBuilder: (context, index) => const SizedBox(height: 15,),
            itemCount: cubit.product.length);

      //gggff
      },
    );
  }

}

