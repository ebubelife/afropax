import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class Frametwo4ItemWidget extends StatelessWidget {
  const Frametwo4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.all(12.h),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Your Applicants",
          style: TextStyle(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primaryContainer.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
            width: 2.h,
          ),
          borderRadius: BorderRadius.circular(
            21.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
