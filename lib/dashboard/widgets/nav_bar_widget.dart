import 'package:flutter/material.dart';
import '../models/nav_item.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF29414C),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          NavItem(icon: Icons.home_outlined, label: "Home"),
          NavItem(icon: Icons.account_balance_wallet_outlined, label: "Wallets"),
          NavItem(icon: Icons.history_outlined, label: "History"),
          NavItem(icon: Icons.shopping_cart_outlined, label: "Shopping"),
          NavItem(icon: Icons.help_outline, label: "FAQ"),
        ],
      ),
    );
  }
}

