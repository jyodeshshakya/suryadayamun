import 'package:flutter/material.dart';

import 'heading.dart';

class Officials extends StatelessWidget {
  const Officials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildHeading('Officials'),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildOfficialsCard('assets/official1.jpg',
                  'रण बहादुर राई\nनगर प्रमुख/nrb_rai@hotmail.com'),
              buildOfficialsCard('assets/official2.jpg',
                  'रण बहादुर राई\nनगर प्रमुख/nrb_rai@hotmail.com'),
              buildOfficialsCard('assets/official3.jpg',
                  'रण बहादुर राई\nनगर प्रमुख/nrb_rai@hotmail.com'),
            ],
          ),
        ),
      ],
    );
  }

  buildOfficialsCard(img, text) {
    return Container(
      height: 100,
      width: 150,
      child: ListTile(
        title: Image.asset(
          img,
          width: 150,
          height: 70,
          fit: BoxFit.cover,
        ),
        subtitle: Column(
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
