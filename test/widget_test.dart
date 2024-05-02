// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';

import 'package:fragment_shader_example/main.dart';

void main() {
  testWidgets('Loads shader', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.pump(const Duration(seconds: 1));

    await expectLater(
      find.byType(MyApp),
      matchesGoldenFile('goldens/myWidget.png'),
    );

    expect(find.text('Loading...'), findsNothing);
  });
}
