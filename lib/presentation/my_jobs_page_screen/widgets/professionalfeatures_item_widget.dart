import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class ProfessionalfeaturesItemWidget extends StatelessWidget {
  const ProfessionalfeaturesItemWidget({Key? key})
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
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Professional Features",
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 16.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primary,
            width: 2.h,
          ),
          borderRadius: BorderRadius.circular(
            17.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
