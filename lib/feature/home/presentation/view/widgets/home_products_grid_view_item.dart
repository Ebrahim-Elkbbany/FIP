import 'package:fip/feature/layout/manger/layout_cubit.dart';
import 'package:flutter/material.dart';

class HomeProductsGridViewItem extends StatelessWidget {
  const HomeProductsGridViewItem({Key? key, required this.cubit, required this.index}) : super(key: key);
  final LayoutCubit cubit;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            cubit.product[index].image!,
            width: double.infinity,

            height: 200,
          ),
          const SizedBox(height: 10,),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Text(
               cubit.product[index].name!,
               style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
             ),
             const SizedBox(height: 10,),
             Text(
               cubit.product[index].price!,
               style:const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
             ),
           ],),
         ),
        ],
      ),
    );
  }
}