import 'package:flutter/material.dart';
import 'package:golden_waiter/widgets/custom_mobile_components/custom_appbar.dart';
import 'package:golden_waiter/widgets/custom_mobile_components/custom_drawer.dart';


class OrderTimingMobileLayout extends StatefulWidget {
  const OrderTimingMobileLayout({super.key});

  @override
  State<OrderTimingMobileLayout> createState() =>
      _OrderTimingMobileLayoutState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _OrderTimingMobileLayoutState extends State<OrderTimingMobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
      ),
      body: const Center(child: Text("Order Timinggggggggggggggg")),
      drawer: const CustomDrawer(),
    );
  }
}
