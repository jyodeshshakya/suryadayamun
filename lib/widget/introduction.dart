import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

buildIntroduction(bool readmore, onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
              child: Text(
            'Suryodaya Municipality, with it’s name being the Nepali translation of “ Rising Sun “ formed in 2013, with the  merge of village Development Councils of Fikkal, Panchakanya and Kanyam. After, the constitution of Nepal promulgated in 2015, more village development councils had been merged including Gorkhey, Pasupatinagar, Sriantu , Samalbung , Laxmipur and Jogmai Word no. 8 and 9 and has resulted in the increase of its area span, with now, it’s size being 252.52 sq.km. It is located centre part of Ilam district',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          )),
          readmore == false
              ? TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = onTap,
                  style: const TextStyle(color: Colors.blue),
                  text: "\nRead more")
              : const WidgetSpan(
                  child: Text(
                    " Populated with fifty-seven thousand people, it has fourteen words and more than forty-two thousand voters, and a very high literacy rate. The Municipality’s head office is located in Fikkal Bazaar, on whose outskirt is the famous tourist destination of India, Darjeeling. Thus, the Municipality has a very good trade relation with the place, since the most vital and famous agriculture destination of East Nepal. It is famous for agriculture products like Potato, Milk, Cardamon, Chayote, Ginger, Broom Gress, Round Chillies.",
                    textAlign: TextAlign.justify,
                  ),
                ),
          readmore
              ? TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = onTap,
                  style: const TextStyle(color: Colors.blue),
                  text: "\nRead less")
              : const TextSpan()
        ],
      ),
    ),
  );

  // Text(
  //   'Suryodaya Municipality, with it’s name being the Nepali translation of “ Rising Sun “ formed in 2013, with the  merge of village Development Councils of Fikkal, Panchakanya and Kanyam. After, the constitution of Nepal promulgated in 2015, more village development councils had been merged including Gorkhey, Pasupatinagar, Sriantu , Samalbung , Laxmipur and Jogmai Word no. 8 and 9 and has resulted in the increase of its area span, with now, it’s size being 252.52 sq.km. It is located centre part of Ilam district',
  //   style: TextStyle(
  //     fontSize: 15,
  //     fontWeight: FontWeight.normal,
  //   ),
  //   textAlign: TextAlign.justify,
  // );
}
