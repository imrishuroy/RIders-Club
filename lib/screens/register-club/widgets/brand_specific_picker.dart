import 'package:flutter/material.dart';

class BrandSpecificPicker extends StatefulWidget {
  const BrandSpecificPicker({Key? key}) : super(key: key);

  @override
  _BrandSpecificPickerState createState() => _BrandSpecificPickerState();
}

class _BrandSpecificPickerState extends State<BrandSpecificPicker> {
  final List<String> _currencies = [
    'Yes',
    'No, all bike brands are allowed',
  ];

  String _currentSelectedValue = 'Yes';

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
              items: _currencies.map((String value) {
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
