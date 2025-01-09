import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DepartureWidget extends StatefulWidget {
  const DepartureWidget({super.key});

  @override
  State<DepartureWidget> createState() => _DepartureWidgetState();
}

class _DepartureWidgetState extends State<DepartureWidget> {
  final TextEditingController _departureController = TextEditingController();
  final TextEditingController _returnController = TextEditingController();

  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('EEEE, d MMM yyyy').format(pickedDate);
      controller.text = formattedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _departureController,
            decoration: const InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Departure',
              hintText: 'Thursday, 7 Jan 2025',
              hintStyle: TextStyle(fontSize: 12.0),
              suffixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
            onTap: () {
              _selectDate(context, _departureController);
            },
          ),
        ),
        const SizedBox(width: 8),

        // Return TextField
        Expanded(
          child: TextField(
            controller: _returnController,
            readOnly: true,
            decoration: const InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: 'Return',
              hintText: 'Thursday, 7 Jan 2025',
              hintStyle: TextStyle(fontSize: 12.0),
              suffixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
            onTap: () {
              _selectDate(context, _returnController);
            },
          ),
        ),
      ],
    );
  }
}
