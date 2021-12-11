import 'package:flutter/material.dart';

class BrandNamePicker extends StatefulWidget {
  const BrandNamePicker({Key? key}) : super(key: key);

  @override
  _BrandNamePickerState createState() => _BrandNamePickerState();
}

class _BrandNamePickerState extends State<BrandNamePicker> {
  final List<String> _brandNames = ['Honda', 'KTM', 'Hero Honda'];

  String _currentSelectedValue = 'Honda';

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
              items: _brandNames.map((String value) {
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
