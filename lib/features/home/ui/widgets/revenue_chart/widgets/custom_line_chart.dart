import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../core/theming/colors_helper.dart';

class CustomLineChart extends StatelessWidget {
  final Map<String, num> spotsData;
  const CustomLineChart({
    super.key,
    required this.spotsData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      padding: EdgeInsets.only(right: 12.w),
      child: LineChart(
        LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: spotsData.entries
                    .map(
                      (monthData) => FlSpot(
                        double.parse(monthData.key),
                        monthData.value.toDouble(),
                      ),
                    )
                    .toList(),
                color: ColorsHelper.primaryColor,
                barWidth: 1,
                isCurved: true,
                curveSmoothness: 0.35,
                preventCurveOverShooting: true,
                belowBarData: BarAreaData(
                  show: false,
                  color: ColorsHelper.primaryColor.withValues(alpha: 0.09),
                ),
                dotData: const FlDotData(show: false),
              )
            ],
            titlesData: FlTitlesData(
                topTitles: const AxisTitles(drawBelowEverything: false),
                rightTitles: const AxisTitles(drawBelowEverything: false),
                bottomTitles: AxisTitles(sideTitles: bottomTitles)),
            minX: 1,
            maxX: 12,
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
