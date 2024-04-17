import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golden_waiter/view/mobile_layOut/navigation_home_page.dart';
import 'package:golden_waiter/widgets/adaptive_layOut.dart';
import 'package:golden_waiter/view/tablet_layOut/order_timing_tablet_layout.dart';

class OrderTimingPage extends StatefulWidget {
  const OrderTimingPage({super.key});

  @override
  State<OrderTimingPage> createState() => _OrderTimingPageState();
}

class _OrderTimingPageState extends State<OrderTimingPage> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayOut(
      mobileLayout: (context) => NavigationPage(pageIndex: 0),
      tabletLayout: (context) => const OrderTimingTabletLayout(),
      desktopLayout: (context) => const OrderTimingTabletLayout(),
    );
  }
}
