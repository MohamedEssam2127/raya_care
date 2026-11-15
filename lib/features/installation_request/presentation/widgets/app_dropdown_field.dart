import 'package:flutter/material.dart';
import 'package:raya_care/utils/app_icons.dart';
import 'package:raya_care/utils/app_palette.dart';

class AppDropdownField<T> extends StatelessWidget {
  const AppDropdownField({
    super.key,
    this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    this.itemLabel,
    this.hint,
  });

  final String? label;
  final T? value;
  final List<T> items;
  final ValueChanged<T?>? onChanged;
  final String Function(T item)? itemLabel;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: TextStyle(
              color: palette.text2,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
        ],
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: palette.surface2,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: palette.line.withValues(alpha: 0.8),
              width: 1,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: items.contains(value) ? value : null,
              isExpanded: true,
              hint: hint != null
                  ? Text(
                      hint!,
                      style: TextStyle(
                        color: palette.text3,
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  : null,
              icon: AppIcon(
                AppIcons.chevronDown,
                size: 18,
                color: palette.text2,
              ),
              dropdownColor: palette.surface,
              borderRadius: BorderRadius.circular(14),
              elevation: 4,
              style: TextStyle(
                color: palette.text,
                fontSize: 13.5,
                fontWeight: FontWeight.w700,
              ),
              onChanged: onChanged,
              items: items.map((T item) {
                final text = itemLabel != null
                    ? itemLabel!(item)
                    : item.toString();
                final isSelected = item == value;

                return DropdownMenuItem<T>(
                  value: item,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          text,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: isSelected ? palette.primary : palette.text,
                            fontWeight: isSelected
                                ? FontWeight.w800
                                : FontWeight.w600,
                            fontSize: 13.5,
                          ),
                        ),
                      ),
                      if (isSelected)
                        AppIcon(
                          AppIcons.check,
                          color: palette.primary,
                          size: 16,
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
