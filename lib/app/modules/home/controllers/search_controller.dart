import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';

class SearchController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  var isTyping = false.obs;

  @override
  void onInit() {
    super.onInit();
    searchController.addListener(() {
      isTyping.value = searchController.text.isNotEmpty || focusNode.hasFocus;
    });

    focusNode.addListener(() {
      isTyping.value = searchController.text.isNotEmpty || focusNode.hasFocus;
    });
  }

  void requestFocus() {
    focusNode.requestFocus();
  }

  void clearFocus() {
    focusNode.unfocus();
  }

  @override
  void onClose() {
    searchController.dispose();
    focusNode.dispose();
    super.onClose();
  }
}
