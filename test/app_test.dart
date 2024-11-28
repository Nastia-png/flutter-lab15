import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab15/main.dart';


void main() {
  testWidgets('Перевірка тексту AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('IPZ-31: Anastasiia last Flutter App'), findsOneWidget);
  });

  testWidgets('Перевірка FloatingActionButton та його іконку', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.byIcon(Icons.electric_car), findsOneWidget);
  });

  testWidgets('Перевірка зміни значення функції після натискання', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Перевірка початкового значення
    expect(find.textContaining('Значення функції для x=0:'), findsOneWidget);

    // Натискаємо кнопку
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Перевірка після натискання
    expect(find.textContaining('Значення функції для x=1:'), findsOneWidget);
  });
}
