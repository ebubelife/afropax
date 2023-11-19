import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLarge18_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.81),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray40013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get bodyMediumGilroyBoldGray400 =>
      theme.textTheme.bodyMedium!.gilroyBold.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static get bodyMediumOpenSansGray700 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumOpenSansGray700_1 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumOpenSansPrimary =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumOpenSansPrimaryContainer =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyMediumPrimaryContainer13 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimaryContainer13_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallGilroyMediumGray800b2 =>
      theme.textTheme.bodySmall!.gilroyMedium.copyWith(
        color: appTheme.gray800B2,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallOnPrimaryContainer9 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.65),
        fontSize: 9.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.31),
      );
  static get bodySmallPrimaryContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  // Headline text style
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 24.fSize,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 24.fSize,
      );
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePrimaryContainer13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  static get labelLargePrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelLargePrimarySemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 20.fSize,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer20 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 20.fSize,
      );
  static get titleLargeOnPrimaryContainer22 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 22.fSize,
      );
  static get titleLargeOnPrimaryContainer23 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 23.fSize,
      );
  static get titleLargeOnPrimaryContainerBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
      );
  static get titleLargePrimary20 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
      );
  static get titleLargePrimary23 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
      );
  static get titleLargePrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumBluegray40018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray40018_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray400SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray400SemiBold17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray400SemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainer19 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 19.fSize,
      );
  static get titleMediumOnPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainerBold17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainerBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainerSemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumOnPrimaryContainer_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.64),
      );
  static get titleMediumOpenSans =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOpenSansBlack900 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.black900.withOpacity(0.48),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansBlack900SemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansBluegray100 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.blueGray100,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansOnPrimaryContainer =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansOnPrimaryContainerBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOpenSansOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansSemiBold =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary17 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary18_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.55),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.57),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainerSemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.46),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainerSemiBold_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.44),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainerSemiBold_3 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.93),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 15.fSize,
      );
  static get titleSmallBluegray400Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.92),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray400Medium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLightgreen900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainer15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainerMedium15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOpenSansPrimary =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary15 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.52),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.52),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryMedium_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryMedium_2 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get gilroyBold {
    return copyWith(
      fontFamily: 'Gilroy-Bold',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get gilroyMedium {
    return copyWith(
      fontFamily: 'Gilroy-Medium',
    );
  }
}
