import 'package:flutter/material.dart';

class DepartureWidget extends StatelessWidget {
  const DepartureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Departure',
              hintText: 'thursday, 7 jan-2025',
              hintStyle: TextStyle(fontSize: 12.0),
              suffixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
            onTap: () {},
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            readOnly: true,
            decoration: const InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Return',
              enabled: false,
              hintText: 'thursday, 7 jan-2025',
              hintStyle: TextStyle(fontSize: 12.0),
              suffixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
            onTap: () {
              // Show date picker
            },
          ),
        ),
      ],
    );
  }
}
