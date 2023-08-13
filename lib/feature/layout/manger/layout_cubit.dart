import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fip/feature/auth/data/model/auth_model.dart';
import 'package:fip/feature/home/presentation/view/home_screen.dart';
import 'package:fip/feature/product/presentation/view/product_screen.dart';
import 'package:fip/feature/profile/presentation/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant.dart';
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
  UserModel? userModel;
  void getUserData() {
    emit(GetUserDataLoading());
    FirebaseFirestore.instance.collection('users').doc(uid).get().then((value) {
       userModel = UserModel.fromJson(value.data()!);
      emit(GetUserDataSuccess());
    }).catchError((error) {
      emit(GetUserDataError(error.toString()));
    });
  }

}
