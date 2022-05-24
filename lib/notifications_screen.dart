import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suryadayamun/widget/appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar('Notification'));
  }
}
