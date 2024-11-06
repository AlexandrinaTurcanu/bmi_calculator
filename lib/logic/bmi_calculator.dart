class BMICalculator {
  final double height;
  final int weight;

  BMICalculator({required this.height, required this.weight});

  double calculateBMI() {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  String getResult() {
    double bmi = calculateBMI();
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi < 24.9) {
      return "Normal";
    } else if (bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }
}
