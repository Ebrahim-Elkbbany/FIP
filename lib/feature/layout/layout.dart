import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'manger/layout_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);
//well done
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit=LayoutCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreen[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomScreen(index);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_sharp,), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category_rounded,), label: 'Category'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person,), label: 'Profile'),

              ],
            ),
          );
        },
      ),
    );
  }
}
