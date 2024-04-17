import 'package:flutter/material.dart';
import 'package:golden_waiter/app_constants/app_fonts.dart';
import 'package:golden_waiter/widgets/custom_mobile_components/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MonthlyRevenueMobileLayout extends StatefulWidget {
  const MonthlyRevenueMobileLayout({super.key});

  @override
  State<MonthlyRevenueMobileLayout> createState() =>
      _MonthlyRevenueMobileLayoutState();
}

String? _selectedItem;

class _MonthlyRevenueMobileLayoutState
    extends State<MonthlyRevenueMobileLayout> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData2> chartData = [
      ChartData2(1, 25),
      ChartData2(2, 50),
      ChartData2(3, 34),
      ChartData2(4, 70),
    ];
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 70.w,
              height: 7.h,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 2,
                  color: const Color(0xffFF7A00),
                ),
              ),
              child: Center(
                child: DropdownButton<String>(
                  style: GoogleFonts.montserratAlternates(
                    color: Colors.black,
                    fontSize: getResponsiveFontSize(context, 15.sp),
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
                    fontSize: getResponsiveFontSize(context, 15.sp),
                    fontWeight: FontWeight.w500,
                  )),
                  focusColor: Colors.transparent,
                  isExpanded: true,
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
                      fontSize: getResponsiveFontSize(context, 17.sp),
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
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(30),
                        borderColor: Colors.white,
                        borderWidth: 5,
                        dataLabelMapper: (ChartData2 data, _) =>
                            "${data.y}%".toString(),
                        dataLabelSettings: DataLabelSettings(
                          isVisible: true,
                          textStyle: GoogleFonts.montserratAlternates(
                            color: Colors.black,
                            fontSize: getResponsiveFontSize(context, 12.sp),
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
    );
  }
}

class ChartData2 {
  ChartData2(this.x, this.y);

  final int x;
  final int y;
}
