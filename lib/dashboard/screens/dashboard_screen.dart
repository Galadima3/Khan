import 'package:flutter/material.dart';
import 'package:khan/dashboard/widgets/services_widget.dart';
import '../models/service_item.dart';
import '../models/transaction_tile.dart';
import '../widgets/balance_widget.dart';
import '../widgets/circle_widget.dart';
import '../widgets/exchange_rate_widget.dart';
import '../widgets/nav_bar_widget.dart';
import '../widgets/promo_card_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header section (fixed height)
            Container(
              padding: const EdgeInsets.all(20.0),

              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff5C7179),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(48.0),
                  bottomRight: Radius.circular(48.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  // Top Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(radius: 25),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Hi, Alex",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Let's manage your crypto",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.qr_code_scanner, color: Colors.white),
                          SizedBox(width: 5),
                          Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const BalanceWidget(),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleWidget(icon: Icons.arrow_upward, subtext: "Send"),
                      CircleWidget(
                        icon: Icons.arrow_downward,
                        subtext: "Receive",
                      ),
                      CircleWidget(icon: Icons.sync_alt, subtext: "Swap"),
                      CircleWidget(icon: Icons.attach_money, subtext: "Buy"),
                    ],
                  ),

                  const SizedBox(height: 20), // Adjust this value as needed
                ],
              ),
            ),

            // Expanded scrollable content
            ServicesWidget(services: services),

            // Exchange Rate Card
            ExchangeRateWidget(),

            const SizedBox(height: 24),

            // Nav Bar
            NavBarWidget(),

            const SizedBox(height: 24),

            // Promo Card
            PromoCardWidget(),

            const SizedBox(height: 24),

            // Recent Transactions
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 5, 15, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text("See all", style: TextStyle(color: Color(0xff264653), fontSize: 12, decoration: TextDecoration.underline)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const TransactionTile(
              icon: Icons.arrow_downward,
              title: 'Receive USDT',
              subtitle: 'P2P Transfer • 04 May 2025',
              amount: '+\$100',
              amountColor: Colors.green,
            ),
            const TransactionTile(
              icon: Icons.arrow_upward,
              title: 'Sent BTC',
              subtitle: 'P2P Transfer • 04 May 2025',
              amount: '-\$100',
              amountColor: Colors.red,
            ),
            const TransactionTile(
              icon: Icons.sync_alt,
              title: 'Conversion',
              subtitle: 'P2P Transfer • 04 May 2025',
              amount: '+\$100',
              amountColor: Colors.green,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}


