import 'package:fip/core/utils/constant.dart';
import 'package:flutter/material.dart';

class HomeProductsGridViewItem extends StatelessWidget {
  const HomeProductsGridViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/Rectangle_31.png',
                width: double.infinity,
                height: 200,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    color: Colors.red,
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'DISCOUNT',
                        style: TextStyle(
                            fontSize: 9.5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cotton shirt Regular Fit',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    const Text(
                      'RM 100.00',
                      style: TextStyle(
                        fontSize: 15,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '100.00',
                      style: TextStyle(
                        fontSize: 13,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor:
                      // favorites[model.id] == true
                      //     ? kPrimaryColor
                      //     :
                      Colors.grey,
                      child: IconButton(
                        onPressed: () {
                          // HomeCubit.get(context).changeFavorites(model.id);
                        },
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}