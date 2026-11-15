import 'package:flutter/material.dart';
import 'package:raya_care/utils/app_palette.dart';
import 'package:raya_care/utils/app_icons.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: palette.surface,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: palette.shadow,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: palette.chip,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: AppIcon(
                  AppIcons.barcode,
                  color: palette.primary,
                  size: 20,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'ادخل رقم الطلب',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: palette.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Directionality(
            textDirection: TextDirection.ltr,
            child: TextField(
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
              style: TextStyle(color: palette.text2, fontSize: 14),
              decoration: InputDecoration(
                hintText: 'RC-2026-00152',
                hintStyle: TextStyle(color: palette.text2),
                filled: true,
                fillColor: palette.surface2,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: AppIcon(
                    AppIcons.barcode,
                    color: palette.text3,
                    size: 20,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: AppIcon(
                    AppIcons.search,
                    color: palette.text3,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              child: const Text('تتبع الآن'),
            ),
          ),
        ],
      ),
    );
  }
}
