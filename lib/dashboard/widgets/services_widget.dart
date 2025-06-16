import 'package:flutter/material.dart';

import '../models/service_item.dart';
class ServicesWidget extends StatelessWidget {
  const ServicesWidget({
    super.key,
    required this.services,
  });

  final List<ServiceItem> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
          child: Text(
            "Services",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),

        GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: services
              .map(
                (item) =>
                Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFEFF1F3),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Center(
                        child: Icon(item.icon,
                            size: 28, color: Colors.black87),
                      ),
                    ),
                    // const SizedBox(height: 8),
                    Text(
                      item.label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
          )
              .toList(),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}