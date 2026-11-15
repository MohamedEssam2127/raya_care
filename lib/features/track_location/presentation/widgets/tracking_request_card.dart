import 'package:flutter/material.dart';
import 'package:raya_care/utils/app_icons.dart';
import 'package:raya_care/utils/app_palette.dart';
import 'package:raya_care/utils/app_theme.dart';

class TrackingRequestCard extends StatelessWidget {
  const TrackingRequestCard({
    required this.requestId,
    required this.device,
    required this.category,
    required this.status,
    required this.statusCode,
    required this.lastUpdated,
    required this.progress,
    super.key,
  });

  final String requestId;
  final String device;
  final String category;
  final String status;
  final String statusCode;
  final String lastUpdated;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final (statusBackground, statusForeground) = palette.status(statusCode);

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
      decoration: BoxDecoration(
        color: palette.surface,
        border: Border.all(color: palette.line),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      requestId,
                      style: AppTheme.mono(size: 13, color: palette.primary),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            device,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: palette.text2,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        _CategoryTag(label: category),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              _StatusTag(
                label: status,
                background: statusBackground,
                foreground: statusForeground,
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: progress.clamp(0.0, 1.0).toDouble(),
              minHeight: 5,
              backgroundColor: palette.surface2,
              valueColor: AlwaysStoppedAnimation<Color>(statusForeground),
            ),
          ),
          const SizedBox(height: 9),
          Row(
            children: [
              AppIcon(AppIcons.clock, color: palette.text3, size: 14),
              const SizedBox(width: 4),
              Text(
                'آخر تحديث: $lastUpdated',
                style: TextStyle(color: palette.text3, fontSize: 11),
              ),
              const Spacer(),
              AppIcon(
                AppIcons.chevronEnd,
                color: palette.text3,
                size: 17,
                mirrorInRtl: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CategoryTag extends StatelessWidget {
  const _CategoryTag({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.palette.chip,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Text(
          label,
          style: TextStyle(
            color: context.palette.chipText,
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _StatusTag extends StatelessWidget {
  const _StatusTag({
    required this.label,
    required this.background,
    required this.foreground,
  });

  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
        child: Text(
          label,
          style: TextStyle(
            color: foreground,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
