import 'package:flutter/material.dart';
import 'package:raya_care/utils/app_icons.dart';
import 'package:raya_care/utils/app_palette.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.initialValue,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.onChanged,
    this.readOnly = false,
    this.helperText,
    this.helperIcon,
    this.textInputAction,
    this.keyboardType,
  });

  final String? label;

  final String? hint;

  final String? initialValue;

  final TextEditingController? controller;

  final int? maxLines;

  final int? minLines;

  final int? maxLength;

  final ValueChanged<String>? onChanged;

  final bool readOnly;

  final String? helperText;

  final String? helperIcon;

  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;

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
          decoration: BoxDecoration(
            color: palette.surface2,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: palette.line.withValues(alpha: 0.8),
              width: 1,
            ),
          ),
          child: TextFormField(
            controller: controller,
            initialValue: controller == null ? initialValue : null,
            maxLines: maxLines,
            minLines: minLines,
            maxLength: maxLength,
            readOnly: readOnly,
            onChanged: onChanged,
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            style: TextStyle(
              color: palette.text,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            buildCounter:
                (
                  context, {
                  required currentLength,
                  required isFocused,
                  maxLength,
                }) => null,
            decoration: InputDecoration(
              isDense: true,
              hintText: hint,
              hintStyle: TextStyle(
                color: palette.text3,
                fontSize: 13.5,
                fontWeight: FontWeight.w500,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 13,
              ),
              filled: true,
              fillColor: Colors.transparent,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
            ),
          ),
        ),
        if (helperText != null && helperText!.isNotEmpty) ...[
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (helperIcon != null) ...[
                AppIcon(helperIcon!, color: palette.text3, size: 15),
                const SizedBox(width: 6),
              ],
              Expanded(
                child: Text(
                  helperText!,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: palette.text3,
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
