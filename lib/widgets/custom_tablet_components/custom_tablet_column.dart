import 'package:flutter/material.dart';
import 'package:golden_waiter/app_constants/app_colors.dart';
import 'package:golden_waiter/app_constants/app_fonts.dart';
import 'package:golden_waiter/view/monthly_revenue_page.dart';
import 'package:golden_waiter/view/order_timing_page.dart';
import 'package:golden_waiter/view/tablet_layOut/order_timing_tablet_layout.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomSideColumn extends StatefulWidget {
  int selectedIndex;

  CustomSideColumn({super.key, required this.selectedIndex});

  @override
  State<CustomSideColumn> createState() => _CustomSideColumnState();
}

class _CustomSideColumnState extends State<CustomSideColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FittedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 20),
          child: Text(
            "Golden Waiter",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textWidthBasis: TextWidthBasis.longestLine,
            style: GoogleFonts.montserratAlternates(
              color: AppColors.primaryColor,
              fontSize: getResponsiveFontSize(context, 3.w),
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 5.w,
      ),
      Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedIndex = 0;
                selectedIndex = 0;
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const OrderTimingPage()),
                        (route) => false);
              });
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              height: 15.w,
              color: widget.selectedIndex == 0
                  ? AppColors.primaryColor
                  : Colors.white,
              child: Center(
                child: FittedBox(
                  child: Text(
                    'Order Timing Chart',
                    maxLines: 2,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: GoogleFonts.montserratAlternates(
                        color: Colors.black,
                        fontSize: getResponsiveFontSize(context, 15.sp),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedIndex = 1;
                selectedIndex = 1;
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const MonthlyRevenuePage()),
                        (route) => false);
              });
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              height: 15.w,
              color: widget.selectedIndex == 1
                  ? AppColors.primaryColor
                  : Colors.white,
              child: Center(
                child: FittedBox(
                  child: Text(
                    'Monthly Revenue',
                    maxLines: 2,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: GoogleFonts.montserratAlternates(
                        color: Colors.black,
                        fontSize: getResponsiveFontSize(context, 15.sp),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedIndex = 2;

              });
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              height: 15.w,
              color: widget.selectedIndex == 2
                  ? AppColors.primaryColor
                  : Colors.white,
              child: Center(
                child: FittedBox(
                  child: Text(
                    'Trending Orders',
                    maxLines: 2,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: GoogleFonts.montserratAlternates(
                        color: Colors.black,
                        fontSize: getResponsiveFontSize(context, 15.sp),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedIndex = 3;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              height: 15.w,
              color: widget.selectedIndex == 3
                  ? AppColors.primaryColor
                  : Colors.white,
              child: Center(
                child: FittedBox(
                  child: Text(
                    'Home',
                    maxLines: 2,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: GoogleFonts.montserratAlternates(
                        color: Colors.black,
                        fontSize: getResponsiveFontSize(context, 10.sp),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    ]);
  }
}
