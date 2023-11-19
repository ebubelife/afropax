import 'package:flutter/material.dart';
import 'package:oga_artisan/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleFour extends StatelessWidget {
  AppbarSubtitleFour({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleLarge20.copyWith(
            color: theme.colorScheme.primaryContainer.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
