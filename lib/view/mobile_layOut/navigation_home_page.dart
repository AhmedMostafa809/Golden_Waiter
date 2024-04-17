import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:golden_waiter/app_constants/app_colors.dart';
import 'package:golden_waiter/app_constants/app_fonts.dart';
import 'package:golden_waiter/view/mobile_layOut/monthly_revenue_mobile_layout.dart';
import 'package:golden_waiter/view/mobile_layOut/order_timing_mobile_layout.dart';
import 'package:sizer/sizer.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({super.key, required this.pageIndex});

  int pageIndex;

  @override
  State<NavigationPage> createState() => _NavigationEXState();
}

class _NavigationEXState extends State<NavigationPage> {


  // @override
  // void initState() {
  //   super.initState();
  //   _pageController = PageController(initialPage: pageIndex);
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   _pageController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final pageIndex = widget.pageIndex;
    final pageController = PageController( initialPage: pageIndex,);
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const <Widget>[
          OrderTimingMobileLayout(),
          MonthlyRevenueMobileLayout(),
          Scaffold(),
          Scaffold()
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: CurvedNavigationBar(
          index: pageIndex,
          animationCurve: Curves.easeOut,
          height: 7.h,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.transparent,
          items: [
            CurvedNavigationBarItem(
              child: CircleAvatar(
                  radius: 7.w,
                  backgroundColor: AppColors.primaryColor.withAlpha(200),
                  child: Icon(
                    Icons.access_time_filled_sharp,
                    size: 7.w,
                  )),
              labelStyle: TextStyle(
                fontSize: getResponsiveFontSize(context, 12.sp),
                fontWeight: FontWeight.bold,
              ),
            ),
            CurvedNavigationBarItem(
              child: CircleAvatar(
                  radius: 7.w,
                  backgroundColor: AppColors.primaryColor.withAlpha(200),
                  child: Icon(
                    Icons.calendar_month,
                    size: 7.w,
                  )),
              labelStyle: TextStyle(
                fontSize: getResponsiveFontSize(context, 10.sp),
                fontWeight: FontWeight.bold,
              ),
            ),
            CurvedNavigationBarItem(
              child: CircleAvatar(
                  radius: 7.w,
                  backgroundColor: AppColors.primaryColor.withAlpha(200),
                  child: Icon(
                    Icons.trending_up,
                    size: 7.w,
                  )),
              labelStyle: TextStyle(
                fontSize: getResponsiveFontSize(context, 15.sp),
                fontWeight: FontWeight.bold,
              ),
            ),
            CurvedNavigationBarItem(
              child: CircleAvatar(
                  radius: 7.w,
                  backgroundColor: AppColors.primaryColor.withAlpha(200),
                  child: Icon(
                    Icons.home_outlined,
                    size: 7.w,
                  )),
              labelStyle: TextStyle(
                fontSize: getResponsiveFontSize(context, 15.sp),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          onTap: (index) {
            widget.pageIndex = index;

            pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
