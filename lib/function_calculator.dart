class FunctionCalculator {
  double calculate(double x) {
    if (x == 4) {
      throw ArgumentError("Ділення на 0: '4 - x' не може дорівнювати 0");
    }
    return (x * x) / (4 - x);
  }
}
