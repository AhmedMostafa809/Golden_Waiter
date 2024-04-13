import 'package:flutter/cupertino.dart';
import 'package:golden_waiter/view/mobile_layOut/order_timing_mobile_layout.dart';
import 'package:golden_waiter/widgets/adaptive_layOut.dart';

class OrderTimingPage extends StatefulWidget {
  const OrderTimingPage({super.key});

  @override
  State<OrderTimingPage> createState() => _OrderTimingPageState();
}

class _OrderTimingPageState extends State<OrderTimingPage> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayOut(
      mobileLayout: (context) => const OrderTimingMobileLayout(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const SizedBox(),
    );
  }
}
