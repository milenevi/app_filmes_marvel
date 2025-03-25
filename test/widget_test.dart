// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/core/di/app_module.dart';
import 'package:pokedex_app/main.dart';

void main() {
  testWidgets('Placeholder test', (WidgetTester tester) async {
    // Build our app with the modular setup
    await tester.pumpWidget(
      ModularApp(module: AppModule(), child: const PokemonApp()),
    );

    // Basic widget test - verify app builds
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
