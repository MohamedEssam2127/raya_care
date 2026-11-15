import 'package:flutter/material.dart';
import 'package:raya_care/features/installation_request/presentation/widgets/app_dropdown_field.dart';
import 'package:raya_care/features/installation_request/presentation/widgets/app_text_field.dart';
import 'package:raya_care/features/installation_request/presentation/widgets/form_section_card.dart';
import 'package:raya_care/features/installation_request/presentation/widgets/installation_header.dart';
import 'package:raya_care/features/installation_request/presentation/widgets/selectable_chip_group.dart';
import 'package:raya_care/utils/app_icons.dart';
import 'package:raya_care/utils/app_palette.dart';

class InstallationRequestScreen extends StatelessWidget {
  const InstallationRequestScreen({super.key});

  static const _categories = ['تكييفات', 'شاشات', 'سخانات', 'شفاطات'];
  static const _brands = ['Carrier', 'Sharp', 'Midea'];
  static const _model = 'Split 2.25 HP · Cool/Heat';
  static const _city = 'القاهرة';
  static const _area = 'مدينة نصر';
  static const _notes =
      'برجاء الاتصال قبل الحضور بساعة واحدة للتنسيق مع حارس العقار.';

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: palette.bg,
        body: Column(
          children: [
            InstallationHeader(onBackPressed: () {}),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FormSectionCard(
                      title: 'الجهاز',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableChipGroup<String>(
                            label: 'الفئة',
                            items: _categories,
                            selectedItem: 'تكييفات',
                            onSelected: (_) {},
                          ),
                          const SizedBox(height: 16),
                          SelectableChipGroup<String>(
                            label: 'البراند',
                            items: _brands,
                            selectedItem: 'Carrier',
                            onSelected: (_) {},
                          ),
                          const SizedBox(height: 16),
                          AppDropdownField<String>(
                            label: 'الموديل',
                            value: _model,
                            items: const [_model],
                            onChanged: null,
                          ),
                        ],
                      ),
                    ),

                    FormSectionCard(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'العدد',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: palette.primary,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'من 1 إلى 99',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: palette.text3,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              _QuantityBox(
                                icon: AppIcons.plus,
                                color: palette.primary,
                                iconColor: Theme.of(
                                  context,
                                ).colorScheme.onPrimary,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: palette.surface2,
                                    border: Border.all(color: palette.accent),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: palette.primary,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              _QuantityBox(
                                icon: AppIcons.minus,
                                color: palette.surface2,
                                iconColor: palette.text3,
                                borderColor: palette.line,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'هيتركب 1 تكييف Carrier',
                              style: TextStyle(
                                color: palette.text3,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    FormSectionCard(
                      title: 'عنوان التركيب',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: AppDropdownField<String>(
                                  label: 'المدينة',
                                  value: _city,
                                  items: const [_city],
                                  onChanged: null,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: AppDropdownField<String>(
                                  label: 'المنطقة',
                                  value: _area,
                                  items: const [_area],
                                  onChanged: null,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          AppInputField(
                            label: 'الشارع ورقم المبنى',
                            initialValue: '12 شارع عباس العقاد، الدور 3',
                            helperText:
                                'افتراضيًا عنوانك المسجّل، وتقدر تغيّره للطلب ده بس',
                            helperIcon: AppIcons.pin,
                          ),
                        ],
                      ),
                    ),

                    FormSectionCard(
                      title: 'وصف إضافي',
                      trailing: Text(
                        '${_notes.length} / 5000',
                        style: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                          color: palette.text3,
                        ),
                      ),
                      child: AppInputField(
                        initialValue: _notes,
                        maxLines: 4,
                        minLines: 3,
                        maxLength: 5000,
                        hint: 'اكتب أي تفاصيل إضافية لمكان التركيب...',
                        helperText: 'بحد أقصى 30 سطر و5000 حرف',
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: palette.receivedBg,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          AppIcon(
                            AppIcons.info,
                            size: 20,
                            color: palette.receivedFg,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'هنتواصل معاك خلال 24 ساعة لتحديد موعد التركيب',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: palette.receivedFg,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),

                    FilledButton(
                      onPressed: () {},
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppIcon(
                              AppIcons.send,
                              color: Theme.of(context).colorScheme.onPrimary,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            const Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text('إرسال طلب التركيب'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'هيوصلك SMS برقم الطلب أول ما يتسجل',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: palette.text3, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QuantityBox extends StatelessWidget {
  const _QuantityBox({
    required this.icon,
    required this.color,
    required this.iconColor,
    this.borderColor,
  });

  final String icon;
  final Color color;
  final Color iconColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        border: borderColor == null ? null : Border.all(color: borderColor!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: AppIcon(icon, color: iconColor, size: 18),
    );
  }
}
