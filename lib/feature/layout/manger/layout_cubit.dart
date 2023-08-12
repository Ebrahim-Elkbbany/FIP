import 'package:fip/feature/home/presentation/view/home_screen.dart';
import 'package:fip/feature/product/presentation/view/product_screen.dart';
import 'package:fip/feature/profile/presentation/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context){
    return BlocProvider.of(context);
  }

  int currentIndex=0;
  void changeBottomScreen(index){
    currentIndex=index;
    emit(ChangeBottomScreen());
  }
  List<Widget>bottomScreen=const [HomeScreen(),ProductScreen(),ProfileScreen()];
}
