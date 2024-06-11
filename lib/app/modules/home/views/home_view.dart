import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_app/app/modules/index/views/index_view.dart';
import 'package:my_app/app/modules/my/views/my_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Obx(() => IndexedStack(
              index: controller.currentIndex.value,
              children: const [const IndexView(), const MyView()],
            )),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
                currentIndex: controller.currentIndex.value, // 设置默认选中项的下标
                onTap: controller.onTap, // 点击事件回调函数
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '首页',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: '搜索',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: '个人中心',
                  )
                ])));
  }
}
