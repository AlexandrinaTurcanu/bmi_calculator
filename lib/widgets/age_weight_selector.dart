import 'package:flutter/material.dart';

class AgeWeightSelector extends StatelessWidget {
  final String label;
  final int value;
  final Function onIncrement;
  final Function onDecrement;

  AgeWeightSelector({
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(
              "$value",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => onDecrement(),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    backgroundColor: Colors.blue,
                  ),
                  child: Icon(Icons.remove, color: Colors.white, size: 24),
                ),
                ElevatedButton(
                  onPressed: () => onIncrement(),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    backgroundColor: Colors.blue,
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
