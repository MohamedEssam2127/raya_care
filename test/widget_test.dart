import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raya_care/features/installation_request/presentation/installation_request_screen.dart';
import 'package:raya_care/features/installation_request/presentation/widgets/form_section_card.dart';
import 'package:raya_care/main.dart';

void main() {
  testWidgets(
    'installation request form displays all sections, chips, stepper, and submit button',
    (WidgetTester tester) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(find.byType(InstallationRequestScreen), findsOneWidget);
      expect(find.text('طلب تركيب'), findsOneWidget);
      expect(find.text('طلب تركيب جديد'), findsOneWidget);
      expect(find.text('الجهاز'), findsOneWidget);
      expect(find.text('الفئة'), findsOneWidget);
      expect(find.text('تكييفات'), findsOneWidget);
      expect(find.text('Carrier'), findsOneWidget);
      expect(find.text('العدد'), findsOneWidget);
      expect(find.text('هيتركب 1 تكييف Carrier'), findsOneWidget);
      expect(find.text('عنوان التركيب'), findsOneWidget);
      expect(find.text('المدينة'), findsOneWidget);
      expect(find.text('المنطقة'), findsOneWidget);
      expect(find.text('وصف إضافي'), findsOneWidget);
      expect(find.text('إرسال طلب التركيب'), findsOneWidget);
      expect(find.byType(FormSectionCard), findsNWidgets(4));
    },
  );
}
