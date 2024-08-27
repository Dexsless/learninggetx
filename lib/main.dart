import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/modules/counter/controllers/counter_controller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final theme = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
            brightness: theme.isDark.value ? Brightness.dark : Brightness.light,
            appBarTheme: AppBarTheme(
              backgroundColor: theme.isDark.value ? Color.fromARGB(255, 162, 42, 180) : Color.fromARGB(255, 15, 133, 243),
            ),
          ),
    );
  }
}
