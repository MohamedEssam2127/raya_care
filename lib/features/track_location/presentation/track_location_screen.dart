import 'package:flutter/material.dart';
import 'package:raya_care/features/track_location/presentation/widgets/header_card.dart';
import 'package:raya_care/features/track_location/presentation/widgets/summary_metric_card.dart';
import 'package:raya_care/features/track_location/presentation/widgets/tracking_request_card.dart';
import 'package:raya_care/utils/app_icons.dart';
import 'package:raya_care/utils/app_palette.dart';

class TrackLocationScreen extends StatelessWidget {
  const TrackLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: palette.bg,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 484,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const _TrackingHeader(),
                    const Positioned(
                      top: 265,
                      left: 16,
                      right: 16,
                      child: HeaderCard(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Expanded(
                      child: SummaryMetricCard(
                        icon: AppIcons.clock,
                        value: '3–5 أيام',
                        caption: 'متوسط الوقت',
                        iconColor: AppPalette.navy,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: SummaryMetricCard(
                        icon: AppIcons.headset,
                        value: '24/7',
                        caption: 'الدعم الفني',
                        iconColor: AppPalette.teal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'آخر عمليات التتبع',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: palette.primary,
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            'عرض الكل',
                            style: TextStyle(
                              color: palette.accent,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    ..._recentRequests.map(
                      (request) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: TrackingRequestCard(
                          requestId: request.requestId,
                          device: request.device,
                          category: request.category,
                          status: request.status,
                          statusCode: request.statusCode,
                          lastUpdated: request.lastUpdated,
                          progress: request.progress,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TrackingHeader extends StatelessWidget {
  const _TrackingHeader();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return SizedBox(
      height: 305,
      width: double.infinity,
      child: Stack(
        children: [
          Container(color: palette.header),
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const AppIcon(
                      AppIcons.chevronEnd,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const AppIcon(AppIcons.pin, color: Colors.white, size: 32),
                  const SizedBox(height: 12),
                  const Text(
                    'تتبع جهازك',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'اعرف جهازك في أنهي مرحلة في ثانية',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.78),
                      fontSize: 14,
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



//// model
class _TrackingRequestData {
  const _TrackingRequestData({
    required this.requestId,
    required this.device,
    required this.category,
    required this.status,
    required this.statusCode,
    required this.lastUpdated,
    required this.progress,
  });

  final String requestId;
  final String device;
  final String category;
  final String status;
  final String statusCode;
  final String lastUpdated;
  final double progress;
}

const _recentRequests = [
  _TrackingRequestData(
    requestId: 'RC-2026-00152',
    device: 'تكييف Samsung',
    category: 'تركيب',
    status: 'تم تحديد الموعد',
    statusCode: 'hub1',
    lastUpdated: '12-11-2026',
    progress: 0.78,
  ),
  _TrackingRequestData(
    requestId: 'RC-2026-00149',
    device: 'تكييف LG',
    category: 'صيانة',
    status: 'جاري الصيانة',
    statusCode: 'maintenance',
    lastUpdated: '11-11-2026',
    progress: 0.62,
  ),
  _TrackingRequestData(
    requestId: 'RC-2026-00131',
    device: 'شاشة Samsung 55”',
    category: 'صيانة',
    status: 'تم الإصلاح',
    statusCode: 'hub2',
    lastUpdated: '02-11-2026',
    progress: 1,
  ),
  _TrackingRequestData(
    requestId: 'RC-2026-00118',
    device: 'سخان Ariston',
    category: 'صيانة',
    status: 'جاري المراجعة',
    statusCode: 'ccSubmit',
    lastUpdated: '28-10-2026',
    progress: 0.16,
  ),
];
