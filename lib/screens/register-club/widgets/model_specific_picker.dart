import 'package:flutter/material.dart';

class ModelSpecifcPicker extends StatefulWidget {
  const ModelSpecifcPicker({Key? key}) : super(key: key);

  @override
  _ModelSpecifcPickerState createState() => _ModelSpecifcPickerState();
}

class _ModelSpecifcPickerState extends State<ModelSpecifcPicker> {
  final List<String> _models = [
    'Yes',
    'No, all Royal Enfield models are acepected',
  ];

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
              items: _models.map((String value) {
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
