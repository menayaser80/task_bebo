import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:graduation_project/cubit/bloc.dart';
import 'package:graduation_project/cubit/states.dart';
import 'package:graduation_project/modules/Chat.dart';
import 'package:graduation_project/modules/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init('dataBox2');

  Widget widget;
  widget = LoginPage();
   runApp(MyApp(
        //isdark: isDark,
        startwidget: widget,
      ));
}
class MyApp extends StatelessWidget {
  final Widget startwidget;

  MyApp({
    //this.isdark,
    required this.startwidget,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AppCubit()..initDataBox(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,

              home: startwidget,
            );
          }),
    );
  }
}
