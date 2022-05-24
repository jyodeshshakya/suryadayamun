import 'package:flutter/material.dart';
import 'package:get/get.dart';

buildAppbar(title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
        )),
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
