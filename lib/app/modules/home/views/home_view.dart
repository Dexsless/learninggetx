import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:learninggetx/app/modules/counter/views/counter_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Astro',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => CounterView());
                },
                child: Text('Counter')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/biodata');
                },
                child: Text('Biodata')),
          ],
        ),
      ),
    );
  }
}
