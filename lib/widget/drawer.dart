import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contact_screen.dart';

customdrawer() {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              children: [
                Image.asset('assets/logo.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Suryodaya Municipality',
                )
              ],
            )),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          onTap: () {
            Get.to(() => const ContactScreen());
          },
          leading: const Icon(Icons.contact_support_rounded),
          title: const Text('Contact'),
        ),
        const ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Exit'),
        ),
      ],
    ),
  );
}
