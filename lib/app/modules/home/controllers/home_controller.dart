import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/app/modules/home/views/home_view.dart';
import 'package:my_app/app/modules/my/views/my_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final currentIndex = 0.obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void onTap(int index) {
    currentIndex.value = index;
  }
}
