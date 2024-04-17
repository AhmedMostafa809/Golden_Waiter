import 'package:flutter/material.dart';
import 'package:golden_waiter/app_constants/app_colors.dart';
import 'package:golden_waiter/app_constants/app_fonts.dart';
import 'package:golden_waiter/view/mobile_layOut/monthly_revenue_mobile_layout.dart';
import 'package:golden_waiter/view/tablet_layOut/order_timing_tablet_layout.dart';
import 'package:golden_waiter/widgets/custom_tablet_components/custom_tablet_column.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MonthlyRevenueTabletLayout extends StatefulWidget {
  const MonthlyRevenueTabletLayout({super.key});

  @override
  State<MonthlyRevenueTabletLayout> createState() => _MonthlyRevenueTabletLayoutState();
}

String? _selectedItem;

class _MonthlyRevenueTabletLayoutState extends State<MonthlyRevenueTabletLayout> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData2> chartData = [
      ChartData2(1, 25),
      ChartData2(2, 50),
      ChartData2(3, 34),
      ChartData2(4, 70),
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
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.w),
                  child: Container(
                    width: 70.w,
                    height: 7.h,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 2,
                        color: const Color(0xffFF7A00),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        style: GoogleFonts.montserratAlternates(
                          color: Colors.black,
                          fontSize: getResponsiveFontSize(context, 10.sp),
                          fontWeight: FontWeight.w500,
                        ),
                        elevation: 0,
                        underline: const SizedBox(),
                        borderRadius: BorderRadius.circular(30),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 7.w,
                          color: Colors.black,
                        ),
                        value: _selectedItem,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedItem = newValue;
                          });
                        },
                        items: <String>[
                          'Option 1',
                          'Option 2',
                          'Option 3',
                          'Option 4'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text('Select an option',  style: GoogleFonts.montserratAlternates(
                          color: Colors.black,
                          fontSize: getResponsiveFontSize(context, 10.sp),
                          fontWeight: FontWeight.w500,
                        )),
                        focusColor: Colors.transparent,
                        isExpanded: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: SfCartesianChart(
                      title: ChartTitle(
                        text: "Monthly Revenue",
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
                        isVisible: false,
                        labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        majorTickLines: MajorTickLines(width: 0),
                        majorGridLines: MajorGridLines(width: 0),
                      ),
                      primaryXAxis: const NumericAxis(
                        isVisible: true,
                        maximumLabels: 1000,
                        labelFormat: "Month \n {value}",
                        interval: 1,
                        maximum: 4.5,
                        labelStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        // labelFormat:  "{value} AM",
                        majorTickLines: MajorTickLines(width: 0),
                        majorGridLines: MajorGridLines(width: 0),
                      ),
                      series: <CartesianSeries<ChartData2, int>>[
                        ColumnSeries<ChartData2, int>(
                            name: "Orders timing",
                            width: .7,
                            spacing: .1,
                            isTrackVisible: true,
                            trackColor: const Color(0xFFD9D9D9),
                            animationDuration: 800,
                            legendItemText: "Monthly Revenue",
                            borderRadius: BorderRadius.circular(50),
                            borderColor: Colors.white,
                            borderWidth: 5,
                            dataLabelMapper: (ChartData2 data, _) =>
                                "${data.y}%".toString(),
                            dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              textStyle: GoogleFonts.montserratAlternates(
                                color: Colors.black,
                                fontSize: getResponsiveFontSize(context, 10.sp),
                                fontWeight: FontWeight.w900,
                              ),
                              overflowMode: OverflowMode.hide,
                              labelAlignment: ChartDataLabelAlignment.top,
                              margin: const EdgeInsets.all(20),
                            ),
                            gradient: const LinearGradient(
                              colors: [Color(0xFF00FF58), Color(0xff00BBFF)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            dataSource: chartData,
                            xValueMapper: (ChartData2 data, _) => data.x,
                            yValueMapper: (ChartData2 data, _) => data.y)
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
