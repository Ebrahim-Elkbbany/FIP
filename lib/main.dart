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
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            titleSpacing: 20.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 60,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          primarySwatch: kPrimaryColor,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: kPrimaryColor,
            elevation: 20.0,
            unselectedItemColor: Colors.grey,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: uid!=null?const LayoutScreen():const OnBoardingView(),
      ),
    );
  }
}
