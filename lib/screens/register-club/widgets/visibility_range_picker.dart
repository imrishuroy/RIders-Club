import 'package:flutter/material.dart';

class VisibilityRangePicker extends StatefulWidget {
  const VisibilityRangePicker({Key? key}) : super(key: key);

  @override
  State<VisibilityRangePicker> createState() => _VisibilityRangePickerState();
}

class _VisibilityRangePickerState extends State<VisibilityRangePicker> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      max: 100,
      divisions: 5,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
