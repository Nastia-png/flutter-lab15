import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/function_calculator.dart';

void main() {
  group('Тести FunctionCalculator', () {
    test('Перевірка коректності розрахунків', () {
      final calculator = FunctionCalculator();

      expect(calculator.calculate(0), equals(0));
      expect(calculator.calculate(2), closeTo(2, 0.001));
      expect(calculator.calculate(3), closeTo(9, 0.001));
    });

    test('Перевірка помилки при x = 4', () {
      final calculator = FunctionCalculator();

      expect(() => calculator.calculate(4), throwsArgumentError);
    });
  });
}
