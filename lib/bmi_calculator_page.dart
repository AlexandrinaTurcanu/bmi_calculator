import 'package:flutter/material.dart';
import 'widgets/gender_selector.dart';
import 'widgets/age_weight_selector.dart';
import 'widgets/result_display.dart';
import 'logic/bmi_calculator.dart';

class BMICalculatorPage extends StatefulWidget {
  @override
  _BMICalculatorPageState createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  bool isMale = true;
  int weight = 70;
  int age = 23;
  double height = 170.0;
  double bmi = 0.0;
  String bmiResult = "Underweight";

  void calculateBMI() {
    BMICalculator calculator = BMICalculator(height: height, weight: weight);
    setState(() {
      bmi = calculator.calculateBMI();
      bmiResult = calculator.getResult();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFE0E5EC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome 😊",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "BMI Calculator",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            GenderSelector(
              isMale: isMale,
              onSelectMale: () {
                setState(() {
                  isMale = true;
                });
              },
              onSelectFemale: () {
                setState(() {
                  isMale = false;
                });
              },
            ),
            SizedBox(height: 35),
            Expanded(
              child: Row(
                children: [
                  AgeWeightSelector(
                    label: "Weight",
                    value: weight,
                    onIncrement: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  AgeWeightSelector(
                    label: "Age",
                    value: age,
                    onIncrement: () {
                      setState(() {
                        age++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        age--;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            TextField(
              onChanged: (value) {
                setState(() {
                  height = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Height (cm)",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ResultDisplay(bmi: bmi, result: bmiResult),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateBMI,
              child: Text(
                "Let's Go",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
