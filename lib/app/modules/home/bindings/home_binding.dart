import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import '../../../data/repositories/music_repository.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/search_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicRepository>(() => MusicRepositoryImpl());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
