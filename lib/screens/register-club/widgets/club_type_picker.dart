import 'package:flutter/material.dart';

class ClubPicker extends StatefulWidget {
  const ClubPicker({Key? key}) : super(key: key);

  @override
  _ClubPickerState createState() => _ClubPickerState();
}

class _ClubPickerState extends State<ClubPicker> {
  final List<String> _clubTypes = [
    'Bike Enthusiastic Club',
    'Car Enthusiastic Club',
  ];

  String _currentSelectedValue = 'Bike Enthusiastic Club';

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
              //  labelStyle: textStyle,
              errorStyle:
                  const TextStyle(color: Colors.redAccent, fontSize: 16.0),
              hintText: 'Please select expense',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
          // isEmpty: _currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _currentSelectedValue,
              isDense: true,
              onChanged: (String? newValue) {
                setState(() {
                  if (newValue != null) {
                    _currentSelectedValue = newValue;
                    state.didChange(newValue);
                  }
                });
              },
              items: _clubTypes.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
