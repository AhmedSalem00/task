import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatefulWidget {
  const ToggleButtonWidget({super.key});

  @override
  State<ToggleButtonWidget> createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return                   ToggleButtons(
      borderRadius: BorderRadius.circular(8),
      fillColor: const Color(0XFF63AF23),
      isSelected: [
        _selectedIndex == 0,
        _selectedIndex == 1,
        _selectedIndex == 2,
      ],
      onPressed: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Round Trip',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'One Way',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Multi-city',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    );

  }
}
