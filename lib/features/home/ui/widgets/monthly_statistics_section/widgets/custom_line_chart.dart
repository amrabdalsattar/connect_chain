import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors_helper.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ColorsHelper.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 8.r,
                color: ColorsHelper.fadedPurple,
                offset: const Offset(0, 4)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('مخطط الإيرادات', style: AppTextStyles.cairoBlackBold13),
          verticalSpace(40),
          Container(
            height: 200.h,
            width: double.infinity,
            padding: EdgeInsets.only(right: 12.w),
            child: LineChart(
              LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(1, 51),
                        const FlSpot(2, 88),
                        const FlSpot(3, 74),
                        const FlSpot(4, 745),
                        const FlSpot(5, 323),
                        const FlSpot(6, 511),
                        const FlSpot(7, 865),
                        const FlSpot(8, 405),
                        const FlSpot(9, 54),
                        const FlSpot(10, 805),
                        const FlSpot(11, 85),
                        const FlSpot(12, 400),
                      ],
                      color: ColorsHelper.primaryColor,
                      barWidth: 1,
                      isCurved: true,
                      curveSmoothness: 0.35,
                      preventCurveOverShooting: true,
                      belowBarData: BarAreaData(
                        show: false,
                        color:
                            ColorsHelper.primaryColor.withValues(alpha: 0.09),
                      ),
                      dotData: const FlDotData(show: false),
                    )
                  ],
                  titlesData: FlTitlesData(
                      topTitles: const AxisTitles(drawBelowEverything: false),
                      rightTitles: const AxisTitles(drawBelowEverything: false),
                      bottomTitles: AxisTitles(sideTitles: bottomTitles)),
                  minX: 1,
                  minY: 0,
                  maxX: 12,
                  maxY: 1000,
                  baselineX: 4,
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(
                    show: true,
                    border: const Border(
                      left: BorderSide(
                        color: ColorsHelper.purple,
                      ),
                      bottom: BorderSide(color: ColorsHelper.purple),
                    ),
                  )),
              curve: Curves.linear,
              duration: const Duration(milliseconds: 150),
            ),
          ),
        ],
      ),
    );
  }
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  final style = AppTextStyles.cairoSemiGreyRegular12;
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = Text('FEB', style: style);
      break;

    case 4:
      text = Text('APR', style: style);
      break;

    case 6:
      text = Text(
        'JUN',
        style: style,
      );
      break;

    case 8:
      text = Text('AUG', style: style);
      break;

    case 10:
      text = Text('OCT', style: style);
      break;

    case 12:
      text = Text('DEC', style: style);
      break;
    default:
      text = const Text('');
      break;
  }

  return SideTitleWidget(
    meta: meta,
    space: 10,
    child: text,
  );
}

SideTitles get bottomTitles => const SideTitles(
      showTitles: true,
      reservedSize: 32,
      interval: 1,
      getTitlesWidget: bottomTitleWidgets,
    );
