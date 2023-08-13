import 'package:fip/feature/categories/presentation/view/widgets/categories_list_view_item.dart';
import 'package:flutter/material.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      padding: EdgeInsetsDirectional.only(top: 40),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const CategoriesListViewItem(),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
        ),
        itemCount: 5);
  }

}

