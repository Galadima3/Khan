import 'package:flutter/material.dart';

class ServiceItem {
  final IconData icon;
  final String label;

  const ServiceItem({required this.icon, required this.label});
}

const List<ServiceItem> services = [
  ServiceItem(icon: Icons.shopping_cart_checkout_outlined, label: 'Shopping'),
  ServiceItem(icon: Icons.phone_android_outlined, label: 'Airtime top-up'),
  ServiceItem(icon: Icons.send_outlined, label: 'Pay Bill'),
  ServiceItem(icon: Icons.card_giftcard_outlined, label: 'Gift Cards'),
  ServiceItem(icon: Icons.star, label: 'Deals'),
  ServiceItem(icon: Icons.currency_exchange, label: 'Exchange'),
  ServiceItem(icon: Icons.group, label: 'Referrals'),
  ServiceItem(icon: Icons.more_horiz, label: 'More'),
];

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
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
          physics: const NeverScrollableScrollPhysics(), // This is also important
          children: services
              .map(
                (item) =>
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFEFF1F3),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Icon(item.icon,
                          size: 28, color: Colors.black87),
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
        const SizedBox(height: 16),
      ],
    );
  }
}