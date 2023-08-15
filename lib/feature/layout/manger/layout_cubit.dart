import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fip/feature/auth/data/model/auth_model.dart';
import 'package:fip/feature/categories/presentation/view/categories_view.dart';
import 'package:fip/feature/home/presentation/view/home_screen.dart';
import 'package:fip/feature/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/constant.dart';
import '../../home/data/model/product_model.dart';
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
  List<Widget>bottomScreen=const [HomeScreen(),CategoriesView(),ProfileView()];
  List<String>titles=const ['Main Services','Product','Profile'];


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

  List<ProductModel>category=[];
  Future<void>getCategory()async{
    emit(GetCategoryLoading());
   try{
     var collRef=await FirebaseFirestore.instance.collection('product').get();
     for (var element in collRef.docs) {
       category.add(ProductModel.fromJson(element.data()));
     }
     emit(GetCategorySuccess());
   }catch(error){
     emit(GetCategoryError());

   }
  }
  //jj
  List<ProductModel>product=[];
  Future<void>getProduct()async{
    emit(GetProductLoading());
   try{
     var collRef=await FirebaseFirestore.instance.collection('bookProduct').get();
     for (var element in collRef.docs) {
       product.add(ProductModel.fromJson(element.data()));
     }
     emit(GetProductSuccess());
   }catch(error){
     emit(GetProductError());
   }
  }
}
