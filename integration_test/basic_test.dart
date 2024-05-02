import 'package:flutter_test/flutter_test.dart';
import 'package:fragment_shader_example/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Shader is visible', (tester) async {
    app.main();

    await tester.pump(const Duration(seconds: 10));

    //expect(find.text('Loading...'), findsNothing);

    await binding.takeScreenshot('screenshot-1');
  });
}
