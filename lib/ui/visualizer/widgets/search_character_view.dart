import 'package:auto_route/auto_route.dart';
import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// A widget that displays a list of characters.
class CharacterView extends HookWidget {
  /// Creates a [CharacterView] widget.
  const CharacterView({
    required this.characters,
    required this.controller,
    super.key,
  });

  /// Scroll controller for the character list.
  final ScrollController controller;

  /// List of Unicode characters to display.
  final List<UnicodeCharProperties> characters;

  /// Builds the widget tree for the character view.
  @override
  Widget build(BuildContext context) {
    final selectedCharacter = useState<String?>(null);
    return ListView.builder(
      controller: controller,
      shrinkWrap: true,
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final char = characters[index];
        final isControl = char.isControl;
        final displayableCharacter = isControl ? '' : char.character;
        final isSelected = selectedCharacter.value == char.character;

        return CharacterTile(
          onTap: () =>
              context.router.pushWidget(CharacterDetailScreen(character: char)),
          isControlCharacter: isControl,
          character: displayableCharacter,
          script: char.script ?? '',
          isSelected: isSelected,
          characterName: char.name?.trim() ?? '',
          codePoint: char.unicodeValue ?? '',
        );
      },
    );
  }
}
