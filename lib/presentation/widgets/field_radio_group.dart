import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_styles.dart';

class FieldRadioOption<T> {
  const FieldRadioOption({required this.label, required this.value});

  final String label;
  final T value;
}

class FieldRadioGroup<T> extends StatelessWidget {
  const FieldRadioGroup({
    super.key,
    required this.title,
    required this.options,
    required this.onChanged,
    this.selectedItem,
  });

  final String title;
  final List<FieldRadioOption<T>> options;
  final T? selectedItem;
  final void Function(T?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: kJakartaRegular.copyWith(color: kBlack)),
          SizedBox(height: 1.h),
          Row(
            children: options
                .map(
                  (option) => Expanded(
                    child: _FieldRadioOption<T>(
                      label: option.label,
                      value: option.value,
                      selectedValue: selectedItem,
                      onChanged: onChanged,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _FieldRadioOption<T> extends StatelessWidget {
  const _FieldRadioOption({
    required this.label,
    required this.value,
    required this.selectedValue,
    required this.onChanged,
  });

  final String label;
  final T value;
  final T? selectedValue;
  final void Function(T?) onChanged;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedValue == value;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => onChanged(value),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: isSelected ? kPrimary : kGrey,
            ),
            const SizedBox(width: 8),
            Text(label, style: kJakartaRegular),
          ],
        ),
      ),
    );
  }
}
