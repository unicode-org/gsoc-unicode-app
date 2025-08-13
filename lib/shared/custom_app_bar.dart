/// A customizable app bar widget for the Unicode Flutter App.
///
/// Provides options for title, actions, leading widget, image, and color
/// customization.
library;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/utils/context_extension.dart';

/// A custom app bar with flexible configuration for title, actions, and
/// visuals.
///
/// Parameters:
/// - [height]: The height of the app bar.
/// - [color]: The color of the app bar background.
/// - [title]: The title text to display.
/// - [actions]: List of action widgets to display on the right.
/// - [leading]: Widget to display as the leading icon/button.
/// - [appBarColor]: The color of the AppBar widget itself.
/// - [top]: Top padding for the app bar.
/// - [onTap]: Callback for leading widget tap.
/// - [isImagePresent]: Whether to show an image in the app bar.
/// - [imageName]: The name of the image asset to display.
/// - [bottomPadding]: Bottom padding for the app bar.
/// - [imageUrl]: URL of the image to display (if any).
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates a [CustomAppBar] widget.
  const CustomAppBar({
    this.height,
    this.title,
    this.actions,
    this.imageUrl,
    this.leading,
    this.color,
    this.appBarColor,
    this.top,
    this.onTap,
    this.isImagePresent = false,
    this.imageName,
    this.bottomPadding,
    super.key,
  });

  /// The height of the app bar.
  final double? height;

  /// The color of the app bar background.
  final Color? color;

  /// The title text to display.
  final String? title;

  /// List of action widgets to display on the right.
  final List<Widget>? actions;

  /// Widget to display as the leading icon/button.
  final Widget? leading;

  /// The color of the AppBar widget itself.
  final Color? appBarColor;

  /// Top padding for the app bar.
  final double? top;

  /// Callback for leading widget tap.
  final VoidCallback? onTap;

  /// Whether to show an image in the app bar.
  final bool isImagePresent;

  /// The name of the image asset to display.
  final String? imageName;

  /// Bottom padding for the app bar.
  final double? bottomPadding;

  /// URL of the image to display (if any).
  final String? imageUrl;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: AppTheme.whiteShade)),
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: leading != null
            ? GestureDetector(
                onTap: onTap ?? () => Navigator.of(context).pop(),
                child: leading,
              )
            : null,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            AutoSizeText(
              title ?? '',
              maxLines: 2,
              minFontSize: 24,
              maxFontSize: 24,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.displayLarge,
            ),
          ],
        ),
        actions: actions,
      ),
    );
  }
}
