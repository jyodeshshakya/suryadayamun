import 'package:flutter/material.dart';

import 'heading.dart';

class OurServices extends StatefulWidget {
  OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  var ontap = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          buildServicesTile(
              'जिम्मेवार अधिकारीः- वडा अध्यक्ष, वडा सचिव, सम्बन्धित फाँटवाला कर्मचारी ।',
              () {
            ontap = !ontap;
            setState(() {});
          }),
          buildServicesTile(
              'चालु आ.व.सम्मको घरजग्गा कर/सम्पत्ति कर तिरेको रसिद वा कर निर्धारण स्वीकृत भएको कागजात',
              () {
            ontap = !ontap;
            setState(() {});
          }),
          buildServicesTile(
              ' फर्मको छाप र संचालकको फोटो, खाता संचालक नमुना दस्तखत सहितको सम्बन्धित बैंकको खाता संचालन सम्बन्धी कार्ड',
              () {
            ontap = !ontap;
            setState(() {});
          }),
          buildServicesTile('कर्मचारी पेन्सनपट्टा सिफारिस', () {
            ontap = !ontap;
            setState(() {});
          }),
          buildServicesTile('अपाङ्ग सिफारिस', () {
            ontap = !ontap;
            setState(() {});
          }),
        ],
      ),
    );
  }

  buildServicesTile(txt, clicked) {
    return ListTile(
      onTap: clicked,
      leading: Icon(
        ontap
            ? Icons.remove_circle_outline_sharp
            : Icons.add_circle_outline_sharp,
        size: 30,
        color: const Color.fromARGB(255, 52, 89, 237),
      ),
      contentPadding: EdgeInsets.zero,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(txt),
          ontap
              ? Container(
                  height: 100,
                  child: const Text(
                    'सेवा प्रकारः-\nसेवा समयः- सोही दिन, सर्जमिनको हकमा बढीमा ३ दिन भित्र\nजिम्मेवार अधिकारीः- वडा अध्यक्ष, वडा सचिव, सम्बन्धित फाँटवाला कर्मचारी ।',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
