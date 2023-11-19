import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class SalesItemWidget extends StatelessWidget {
  const SalesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Sales",
        style: TextStyle(
          color: theme.colorScheme.primaryContainer.withOpacity(0.57),
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          9.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
