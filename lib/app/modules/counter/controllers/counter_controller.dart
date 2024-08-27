import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterController extends GetxController {
  var bilangan = 0.obs;
  var isDark = false.obs;

  void increment() {
    if (bilangan.value >= 20) {
      Get.snackbar('Error', 'Jangan melebihi 20',
          backgroundColor: Colors.blue, icon: Icon(Icons.error));
    } else {
      bilangan.value++;
    }
  }
    void decrement() {
    if (bilangan.value <= 0) {
      Get.snackbar('Error', 'Tidak boleh berkurang lagi',
          backgroundColor: Colors.red, icon: Icon(Icons.error));
    } else {
      bilangan.value--;
    }
  }
  void reset() {
    bilangan.value = 0;
    Get.snackbar('success', 'data berhasil di reset', backgroundColor: Colors.green, icon: Icon(Icons.check));
  }

  void ChangeTheme() => isDark.value = !isDark.value;

}
