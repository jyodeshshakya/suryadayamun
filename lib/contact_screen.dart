import 'package:flutter/material.dart';
import 'package:suryadayamun/widget/appbar.dart';
import 'package:suryadayamun/widget/heading.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar('Contact'),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeading('महत्वपूर्ण फोन नम्वरहरु'),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'दमकल:\n०२७-५४०५८३\n९८६२६६८४७०,\n९८६२७७०६६६\nईलाका प्रहरी कार्यालय, पशुपतिनगर:\n०२७५५००९९,\n९७५२६०५४२८\nप्रहरी चौकी, फिक्कल :\n०२७५४०२१८',
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
        ));
  }
}
