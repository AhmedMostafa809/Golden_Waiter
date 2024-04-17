import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golden_waiter/view/mobile_layOut/navigation_home_page.dart';
import 'package:golden_waiter/view/tablet_layOut/monthly_revenue_tablet_layout.dart';
import 'package:golden_waiter/widgets/adaptive_layOut.dart';

class MonthlyRevenuePage extends StatefulWidget {
  const MonthlyRevenuePage({super.key});

  @override
  State<MonthlyRevenuePage> createState() => _OrderTimingPageState();
}

class _OrderTimingPageState extends State<MonthlyRevenuePage> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayOut(
      mobileLayout: (context) => NavigationPage(pageIndex: 1),
      tabletLayout: (context) => const MonthlyRevenueTabletLayout(),
      desktopLayout: (context) => const MonthlyRevenueTabletLayout(),
    );
  }
}
