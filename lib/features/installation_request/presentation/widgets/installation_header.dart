
import 'package:flutter/material.dart';
import 'package:raya_care/utils/app_icons.dart';
import 'package:raya_care/utils/app_palette.dart';
class InstallationHeader extends StatelessWidget {
  const InstallationHeader({
    super.key,
    this.title = 'طلب تركيب',
    this.cardTitle = 'طلب تركيب جديد',
    this.cardSubtitle = 'املأ البيانات وهنتواصل معاك لتحديد الموعد',
    this.onBackPressed,
  });

  final String title;
  final String cardTitle;
  final String cardSubtitle;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final onHeader = Theme.of(context).colorScheme.onPrimary;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: palette.header),
      child: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: onBackPressed ??  () {  },
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            color: onHeader.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          alignment: Alignment.center,
                          child: AppIcon(
                            AppIcons.chevronEnd,
                            color: onHeader,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Text(
                        title,
                        style: TextStyle(
                          color: onHeader,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: onHeader.withValues(alpha: 0.09),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: onHeader.withValues(alpha: 0.15),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: palette.surface,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: palette.shadow,
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: AppIcon(
                            AppIcons.install,
                            color: palette.primary,
                            size: 24,
                            strokeWidth: 2.2,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cardTitle,
                                style: TextStyle(
                                  color: onHeader,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                cardSubtitle,
                                style: TextStyle(
                                  color: onHeader.withValues(alpha: 0.8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
