import 'package:flutter/material.dart';
import 'package:suryadayamun/constants.dart';
import 'package:suryadayamun/widget/appbar.dart';
import 'package:suryadayamun/widget/heading.dart';

import '../widget/introduction.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  var readmore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar('हाम्रो परिचय'),
        body: Column(
          children: [
            buildHeading('Brief Introducion'),
            buildsizedbox(),
            buildIntroduction(readmore, () {
              readmore = !readmore;
              setState(() {});
            }),
          ],
        ));
  }
}
