import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final IconData icon;
  final String subtext;
  const CircleWidget({super.key, required this.icon, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Container
        Container(
          width: 59,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xff667B83),

            shape: BoxShape.circle,
          ),
          child: Center(child: Icon(icon, color: Colors.white, size: 30,),),
        ),
        //Text
        Text(subtext, style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w400),)
      ],
    );
  }
}
