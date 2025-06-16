import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Balance
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Balance",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            Text(
              "\$400,000",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
        //Tier 1
        Container(
          height: 29,
          width: 79,
          decoration: BoxDecoration(
            color: Color(0xff70858D),
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star_border_outlined, color: Colors.white,),
              Text("Tier 1", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),)
            ],
          ),
        ),
      ],
    );
  }
}
