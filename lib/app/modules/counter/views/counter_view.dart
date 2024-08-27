import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  final counterC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Flutter", style: TextStyle(fontSize: 30),),
            IconButton(
              icon: Icon(Icons.bedtime_sharp),
              onPressed: () {
                counterC.ChangeTheme();
              },
            )
          ],
        ),
      ),
      body:  Center(
        child: Obx(
          () => Text(
            "Angka ${counterC.bilangan}",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => counterC.increment(),
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () => counterC.decrement(),
          ),
          FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () => counterC.reset(),
          ),
        ],
      ),
    );
  }
}
