import 'package:fip/feature/layout/manger/layout_cubit.dart';
import 'package:flutter/material.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem(
      {Key? key, required this.index, required this.cubit})
      : super(key: key);
  final int index;
  final LayoutCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                cubit.product[index].image!,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    cubit.product[index].name!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    cubit.product[index].price!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
