import 'package:flutter/material.dart';

import 'heading.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildHeading('Quick Links'),
        const SizedBox(
          height: 10,
        ),
        buildQuickLinkTile(),
      ],
    );
  }

  buildQuickLinkTile() {
    return Wrap(
      runSpacing: 10,
      spacing: 20,
      children: [
        buildQuickCard('assets/q1.png', 'शिक्षा'),
        buildQuickCard('assets/q2.png', 'पशुसेवा'),
        buildQuickCard('assets/q3.jpg', 'खेलकुद'),
        buildQuickCard('assets/q4.jpg', 'कानून'),
        buildQuickCard('assets/q5.png', 'कर्मचारी'),
        buildQuickCard('assets/q6.png', 'स्वास्थ्य'),
        buildQuickCard('assets/q7.png', 'सहकारी'),
        buildQuickCard('assets/q8.png', 'पदाधिकारी'),
      ],
    );
  }

  buildQuickCard(img, text) {
    return Container(
      width: 60,
      child: Column(
        children: [
          Image.asset(
            img,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
