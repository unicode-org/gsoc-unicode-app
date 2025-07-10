import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gsoc_unicode_app/models/models.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';

/// A widget that displays a list of characters.
class CharacterView extends HookWidget {
  /// Creates a [CharacterView] widget.
  const CharacterView({required this.characters, super.key});

  /// Charcters
  final List<UnicodeCharacter> characters;

  @override
  Widget build(BuildContext context) {
    final selectedCharacter = useState<String?>(null);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: characters.map((char) {
        final isSelected = selectedCharacter.value == char.character;
        return CharacterTile(
          onTap: () =>
              context.router.pushWidget(CharacterDetailScreen(character: char)),
          character: char.character,
          isSelected: isSelected,
          characterName: char.characterName,
          codePoint: char.codePoint,
        );
      }).toList(),
    );
  }
}
