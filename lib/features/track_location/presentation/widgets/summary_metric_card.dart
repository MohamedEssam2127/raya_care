import 'package:flutter/material.dart';
import 'package:raya_care/utils/app_icons.dart';
import 'package:raya_care/utils/app_palette.dart';

class SummaryMetricCard extends StatelessWidget {
  const SummaryMetricCard({
    required this.icon,
    required this.value,
    required this.caption,
    required this.iconColor,
    super.key,
  });

  final String icon;
  final String value;
  final String caption;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Container(
      height: 141,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: palette.surface,
        border: Border.all(color: palette.line),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.13),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: AppIcon(icon, color: iconColor, size: 23),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: palette.primary,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            caption,
            textAlign: TextAlign.center,
            style: TextStyle(color: palette.text2, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
