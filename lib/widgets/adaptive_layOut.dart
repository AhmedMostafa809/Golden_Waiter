import 'package:flutter/cupertino.dart';

class AdaptiveLayOut extends StatefulWidget {
  const AdaptiveLayOut({required this.mobileLayout,required this.tabletLayout,required this.desktopLayout,
      super.key});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  State<AdaptiveLayOut> createState() => _AdaptiveLayOutState();
}

class _AdaptiveLayOutState extends State<AdaptiveLayOut> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return widget.mobileLayout(context);
      } else if (constraints.maxWidth < 900) {
        return widget.tabletLayout(context);
      } else {
        return widget.desktopLayout(context);
      }
    });
  }
}
