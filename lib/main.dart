import 'package:fip/core/utils/block_observer.dart';
import 'package:fip/core/utils/constant.dart';
import 'package:fip/feature/layout/layout.dart';
import 'package:fip/feature/layout/manger/layout_cubit.dart';
import 'package:fip/feature/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fip/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/shared_preferences.dart';
import 'core/utils/theme.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  await SharedPreference.init();
  uid = SharedPreference.getData(key: 'uid');
  runApp(const FIP());
}
// auth refactor
class FIP extends StatelessWidget {
  const FIP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LayoutCubit()..getUserData(),)],
      child: MaterialApp(
        theme: lightThem,
        debugShowCheckedModeBanner: false,
        home: uid!=null?const LayoutScreen():const OnBoardingView(),
      ),
    );
  }
}
