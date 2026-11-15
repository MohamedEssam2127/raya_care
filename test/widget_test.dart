import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raya_care/features/track_location/presentation/widgets/tracking_request_card.dart';
import 'package:raya_care/main.dart';

void main() {
  testWidgets(
    'tracking page displays the search, metrics, and recent requests',
    (WidgetTester tester) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(const MyApp());

      expect(tester.takeException(), isNull);
      expect(find.text('تتبع جهازك'), findsOneWidget);
      expect(find.text('ادخل رقم الطلب'), findsOneWidget);
      expect(find.text('تتبع الآن'), findsOneWidget);
      expect(find.text('24/7'), findsOneWidget);
      expect(find.text('3–5 أيام'), findsOneWidget);
      expect(find.text('آخر عمليات التتبع'), findsOneWidget);
      expect(find.byType(TrackingRequestCard), findsNWidgets(4));
      expect(find.byType(LinearProgressIndicator), findsNWidgets(4));
    },
  );
}
