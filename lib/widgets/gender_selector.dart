import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  final bool isMale;
  final Function onSelectMale;
  final Function onSelectFemale;

  GenderSelector({
    required this.isMale,
    required this.onSelectMale,
    required this.onSelectFemale,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onSelectMale(),
            child: Container(
              height: 60,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: isMale ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isMale ? Colors.transparent : Colors.blue,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.male, color: isMale ? Colors.white : Colors.blue),
                  SizedBox(width: 5),
                  Text(
                    "Male",
                    style: TextStyle(
                      color: isMale ? Colors.white : Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () => onSelectFemale(),
            child: Container(
              height: 60, // Înălțime mai mică
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: !isMale ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: !isMale ? Colors.transparent : Colors.blue,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.female, color: !isMale ? Colors.white : Colors.blue),
                  SizedBox(width: 5),
                  Text(
                    "Female",
                    style: TextStyle(
                      color: !isMale ? Colors.white : Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
