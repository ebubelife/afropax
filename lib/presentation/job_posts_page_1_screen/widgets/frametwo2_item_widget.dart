import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class Frametwo2ItemWidget extends StatelessWidget {
  const Frametwo2ItemWidget({Key? key})
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
          horizontal: 25.h,
          vertical: 12.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Home",
          style: TextStyle(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {},
      ),
    );
  }
}
