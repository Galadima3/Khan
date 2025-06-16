import 'package:flutter/material.dart';

class ServiceItem {
  final IconData icon;
  final String label;

  const ServiceItem({required this.icon, required this.label});
}

const List<ServiceItem> services = [
  ServiceItem(icon: Icons.shopping_cart_checkout_outlined, label: 'Shopping'),
  ServiceItem(icon: Icons.phone_android_outlined, label: 'Airtime'),
  ServiceItem(icon: Icons.send_outlined, label: 'Pay Bill'),
  ServiceItem(icon: Icons.card_giftcard_outlined, label: 'Gift Cards'),
  ServiceItem(icon: Icons.star, label: 'Deals'),
  ServiceItem(icon: Icons.currency_exchange, label: 'Exchange'),
  ServiceItem(icon: Icons.group, label: 'Referrals'),
  ServiceItem(icon: Icons.more_horiz, label: 'More'),
];
