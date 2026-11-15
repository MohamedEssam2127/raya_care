import 'package:flutter/material.dart';
import 'package:raya_care/utils/app_palette.dart';

class SelectableChipGroup<T> extends StatelessWidget {
  const SelectableChipGroup({
    super.key,
    this.label,
    required this.items,
    required this.selectedItem,
    required this.onSelected,
    this.itemLabel,
    this.spacing = 10,
    this.runSpacing = 10,
  });

  final String? label;

  final List<T> items;

  final T? selectedItem;

  final ValueChanged<T> onSelected;

  final String Function(T item)? itemLabel;

  final double spacing;

  final double runSpacing;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final selectedForeground = Theme.of(context).colorScheme.onPrimary;

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
        Wrap(
          spacing: spacing,
          runSpacing: runSpacing,
          children: items.map((item) {
            final isSelected = item == selectedItem;
            final text = itemLabel != null ? itemLabel!(item) : item.toString();

            return InkWell(
              onTap: () => onSelected(item),
              borderRadius: BorderRadius.circular(12),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 9,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? palette.primary : palette.surface,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected ? palette.primary : palette.line,
                    width: 1.2,
                  ),
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: palette.primary.withValues(alpha: 0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ]
                      : null,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                    color: isSelected ? selectedForeground : palette.text,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
