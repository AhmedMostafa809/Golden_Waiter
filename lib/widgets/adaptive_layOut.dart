import 'package:flutter/cupertino.dart';

class AdaptiveLayOut extends StatelessWidget {
  const AdaptiveLayOut({required this.mobileLayout,required this.tabletLayout,required this.desktopLayout,
      super.key});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 900) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
