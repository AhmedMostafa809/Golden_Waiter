import 'package:flutter/material.dart';
import 'package:golden_waiter/app_constants/app_colors.dart';
import 'package:golden_waiter/app_constants/app_fonts.dart';
import 'package:golden_waiter/view/mobile_layOut/order_timing_mobile_layout.dart';
import 'package:golden_waiter/widgets/custom_tablet_components/custom_tablet_column.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OrderTimingTabletLayout extends StatefulWidget {
  const OrderTimingTabletLayout({super.key});

  @override
  State<OrderTimingTabletLayout> createState() =>
      _OrderTimingTabletLayoutState();
}

int selectedIndex = 0;

class _OrderTimingTabletLayoutState extends State<OrderTimingTabletLayout> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(1, 10),
      ChartData(2, 23),
      ChartData(3, -34),
      ChartData(4, 25),
      ChartData(5, -16),
      ChartData(6, 0),
      ChartData(7, 30),
      ChartData(8, -34),
      ChartData(9, 27),
      ChartData(10, 23),
      ChartData(11, -5),
      ChartData(12, -26),
    ];
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: CustomSideColumn(
                selectedIndex: selectedIndex,
              )
          ),
          VerticalDivider(
            thickness: 4,
            width: 0,
            color: AppColors.primaryColor,
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50.h,
                    child: SfCartesianChart(
                        title: ChartTitle(
                          text: "Order Timing Chart",
                          textStyle: GoogleFonts.montserratAlternates(
                            color: Colors.black,
                            fontSize: getResponsiveFontSize(context, 10.sp),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        // legend: Legend(
                        //   legendItemBuilder: (String name, dynamic series,
                        //       dynamic point, int index) {
                        //     return Container(
                        //       height: 20,
                        //       width: 20,
                        //       decoration: const BoxDecoration(
                        //         gradient: LinearGradient(
                        //           colors: [Color(0xFFFF0063), Color(0xFFFF5C00)],
                        //           begin: Alignment.centerRight,
                        //           end: Alignment.centerLeft,
                        //         ),
                        //         shape: BoxShape.circle,
                        //       ),
                        //     );
                        //   },
                        //
                        //   isVisible: true,
                        //   overflowMode: LegendItemOverflowMode.wrap,
                        //   position: LegendPosition.bottom,
                        // ),
                        enableAxisAnimation: true,
                        borderWidth: 5,
                        plotAreaBorderColor: Colors.transparent,
                        // tooltipBehavior: TooltipBehavior(enable: true),
                        plotAreaBackgroundColor: Colors.transparent,
                        primaryYAxis: const NumericAxis(
                          isVisible: true,
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          majorTickLines: MajorTickLines(width: 0),
                          majorGridLines: MajorGridLines(width: 0),
                        ),
                        primaryXAxis: const NumericAxis(
                          isVisible: true,
                          maximumLabels: 1000,
                          // labelFormat:  "{value} PM",
                          interval: 1,
                          maximum: 12.5,
                          labelStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          // labelFormat:  "{value} AM",
                          majorTickLines: MajorTickLines(width: 0),
                          majorGridLines: MajorGridLines(width: 0),
                        ),
                        series: <CartesianSeries<ChartData, int>>[
                          ColumnSeries<ChartData, int>(
                              name: "Orders timing",
                              width: .7,
                              spacing: .1,
                              isTrackVisible: true,
                              trackColor: const Color(0xFFD9D9D9),
                              animationDuration: 800,
                              legendItemText: "Orders",
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                colors: [Color(0xFF2184B1), Color(0xFF1ECBA1)],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                              ),
                              dataSource: chartData,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y)
                        ]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
