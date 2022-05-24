import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard(
      {Key? key, required this.img, required this.title, this.ontap})
      : super(key: key);

  final String img;
  final String title;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          height: 130,
          width: 120,
          decoration: BoxDecoration(
              color: const Color.fromARGB(208, 255, 255, 255),
              border: Border.all(color: Colors.grey.shade300, width: 0.5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 1, offset: Offset(2, 1))
              ],
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                img,
                height: 40.0,
                width: 40.0,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 15.sp),
              )
            ],
          )),
    );
  }
}
