import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dart_icu4x/dart_icu4x.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async => await RustLib.init());
  test('getUnicodeCharProperties returns properties', () async {
    final properties = getUnicodeCharProperties(
      offset: BigInt.from(0),
      limit: BigInt.from(20),
    );
    expect(properties, isNotEmpty);
    expect(properties[0].character, isNotNull);
  });
}
