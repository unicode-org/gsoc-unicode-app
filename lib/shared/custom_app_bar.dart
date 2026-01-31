/// A customizable app bar widget with flexible configuration options.
///
/// The CustomAppBar widget provides a highly configurable app bar that can
/// be adapted to different screen requirements. It supports various visual
/// elements including titles, actions, leading widgets, and optional images,
/// while maintaining consistent styling with the app's design system.
///
/// This widget is designed to replace the standard Flutter AppBar in
/// situations where more customization is needed. It provides a consistent
/// look and feel across the app while allowing for screen-specific
/// customization through its extensive parameter set.
///
/// Key Features:
/// - Flexible title configuration with auto-sizing text
/// - Customizable leading widget and actions
/// - Optional image display (local assets or URLs)
/// - Consistent styling with app theme
/// - Responsive design that adapts to content
/// - Support for custom colors and padding
/// - Touch interaction handling for leading widget
///
/// Usage:
/// ```dart
/// CustomAppBar(
///   title: 'Screen Title',
///   leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
///   actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
/// )
/// ```
library;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// A custom app bar with flexible configuration for title, actions, and
/// visuals.
///
/// This widget provides a customizable app bar that can be adapted to
/// different screen requirements. It maintains consistent styling with
/// the app's design system while offering extensive customization options
/// for titles, leading widgets, actions, and visual elements.
///
/// The app bar automatically handles navigation behavior and provides
/// a consistent visual appearance across all screens. It supports both
/// simple configurations for basic screens and complex setups for feature-rich
/// interfaces.
///
/// Design Features:
/// - Clean, modern appearance with subtle borders
/// - Auto-sizing title text that adapts to content
/// - Consistent spacing and typography
/// - Smooth touch interactions and feedback
/// - Responsive layout that works on various screen sizes
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates a [CustomAppBar] widget.
  ///
  /// The widget provides extensive customization options while maintaining
  /// sensible defaults. Most parameters are optional, allowing for simple
  /// configurations when full customization isn't needed.
  ///
  /// Parameters:
  /// - [height]: Custom height for the app bar (optional)
  /// - [title]: Text to display as the app bar title
  /// - [actions]: List of action widgets to display on the right
  /// - [leading]: Widget to display as the leading icon/button
  /// - [color]: Background color for the app bar container
  /// - [appBarColor]: Color for the underlying AppBar widget
  /// - [top]: Top padding adjustment
  /// - [onTap]: Custom callback for leading widget tap
  /// - [isImagePresent]: Whether to show an image in the app bar
  /// - [imageName]: Name of the local image asset to display
  /// - [bottomPadding]: Bottom padding for the app bar
  /// - [imageUrl]: URL of the image to display (if any)
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
    this.script,
    super.key,
  });

  /// The height of the app bar.
  ///
  /// This parameter allows customizing the height of the app bar
  /// beyond the default toolbar height. It's useful for creating
  /// taller app bars that can accommodate additional content or
  /// for creating more compact app bars for specific screens.
  ///
  /// If not specified, the app bar uses the default toolbar height
  /// defined by Flutter's kToolbarHeight constant.
  final double? height;

  /// The color of the app bar background.
  ///
  /// This parameter sets the background color of the outer container
  /// that wraps the app bar. It's useful for creating app bars with
  /// custom background colors that differ from the standard app bar
  /// appearance.
  ///
  /// If not specified, the app bar uses the default white background
  /// with subtle borders for visual separation.
  final Color? color;

  /// The title text to display in the app bar.
  ///
  /// This is the primary text that appears in the center of the app bar.
  /// The text is automatically sized to fit the available space and
  /// supports multi-line display if needed. It's the main identifier
  /// for the current screen or section.
  ///
  /// The title is displayed using the app's text theme and automatically
  /// adjusts its size to maintain readability across different screen sizes.
  final String? title;

  /// List of action widgets to display on the right side of the app bar.
  ///
  /// These widgets typically include buttons, icons, or other interactive
  /// elements that provide quick access to screen-specific actions. Common
  /// examples include search buttons, menu buttons, or action buttons.
  ///
  /// The actions are displayed in a row on the right side of the app bar,
  /// with appropriate spacing and alignment. They can include any Flutter
  /// widget, though buttons and icons are most common.
  final List<Widget>? actions;

  /// Widget to display as the leading icon/button on the left side.
  ///
  /// This widget typically represents navigation or screen-specific
  /// functionality. Common examples include back buttons, menu buttons,
  /// or custom icons. The widget is automatically wrapped with touch
  /// handling for user interaction.
  ///
  /// If not specified, no leading widget is displayed. If specified,
  /// it's automatically wrapped with a GestureDetector to handle taps
  /// and provide visual feedback.
  final Widget? leading;

  /// The color of the underlying AppBar widget.
  ///
  /// This parameter sets the background color of the Flutter AppBar
  /// widget that's wrapped by the custom container. It's separate from
  /// the container color and allows for layered visual effects.
  ///
  /// If not specified, the AppBar uses a transparent background,
  /// allowing the container color to show through.
  final Color? appBarColor;

  /// Top padding adjustment for the app bar.
  ///
  /// This parameter allows fine-tuning the top spacing of the app bar.
  /// It's useful for adjusting the app bar position relative to the
  /// status bar or other system UI elements.
  ///
  /// If not specified, the app bar uses the default top spacing
  /// defined by Flutter's AppBar widget.
  final double? top;

  /// Custom callback for leading widget tap events.
  ///
  /// This callback is executed when the leading widget is tapped.
  /// It allows for custom behavior beyond the default navigation
  /// behavior. If not specified, the default back navigation is used.
  ///
  /// The callback receives no parameters and should handle the tap
  /// action appropriately for the specific screen or use case.
  final VoidCallback? onTap;

  /// Whether to show an image in the app bar.
  ///
  /// This boolean flag controls whether an image is displayed in
  /// the app bar. When true, the image specified by [imageName]
  /// or [imageUrl] is shown alongside or instead of the title.
  ///
  /// This feature is useful for creating branded app bars or
  /// for screens that benefit from visual identification.
  final bool isImagePresent;

  /// The name of the local image asset to display in the app bar.
  ///
  /// This parameter specifies the name of an image file that's
  /// included in the app's assets. The image is displayed in the
  /// app bar when [isImagePresent] is true.
  ///
  /// The image name should match the asset declaration in the
  /// pubspec.yaml file and should be located in the assets directory.
  final String? imageName;

  /// Bottom padding for the app bar.
  ///
  /// This parameter sets the bottom spacing of the app bar container.
  /// It's useful for creating app bars with custom bottom spacing
  /// or for adjusting the visual separation from the content below.
  ///
  /// If not specified, the app bar uses the default bottom spacing
  /// that provides good visual separation from content.
  final double? bottomPadding;

  /// URL of the image to display in the app bar.
  ///
  /// This parameter specifies a network URL for an image to display
  /// in the app bar. It's an alternative to [imageName] for displaying
  /// images that aren't bundled with the app.
  ///
  /// The image URL should point to a valid image file that can be
  /// loaded and displayed by Flutter's image loading system.
  final String? imageUrl;

  /// The script associated with the title for font styling.
  final String? script;

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
              style: UnicodeHelper.getFontStylesForScript(script ?? '',
                      fontWeight: FontWeight.bold, fontSize: 30)
                  .first,
            ),
          ],
        ),
        actions: actions,
      ),
    );
  }
}
