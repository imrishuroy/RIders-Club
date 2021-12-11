import 'package:flutter/material.dart';

import 'widgets/brand_name_picke.dart';
import 'widgets/brand_specific_picker.dart';
import 'widgets/club_type_picker.dart';
import 'widgets/logo_picker.dart';
import 'widgets/pick_location.dart';
import 'widgets/visibility_range_picker.dart';

class RegisterClubScreen extends StatefulWidget {
  const RegisterClubScreen({Key? key}) : super(key: key);

  @override
  State<RegisterClubScreen> createState() => _RegisterClubScreenState();
}

class _RegisterClubScreenState extends State<RegisterClubScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Register your club',
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30.0),
                const LogoPicker(),
                const SizedBox(height: 70.0),
                const CustomTextField(hintText: 'Rider Club Name*'),
                const CustomTextField(
                    hintText: 'Description (140 Characters)*'),
                const CustomTextField(hintText: 'Club Founded*'),
                const CustomTextField(
                    hintText: 'Social (Instagram, Facebook, Twitter)*'),
                const CustomTextField(hintText: 'Total Club Members*'),
                const CustomTextField(hintText: 'Active Club Riders*'),
                const CustomTextField(hintText: 'Total Numbers Of Chapters*'),
                const CustomTextField(
                    hintText: 'Chapter City (Ex Hyderabad, Banglore)*'),
                const CustomTextField(hintText: 'Total Numbers Of Chapters*'),
                const ClubPicker(),
                const SizedBox(height: 15.0),
                const BrandSpecificPicker(),
                const SizedBox(height: 15.0),
                const BrandNamePicker(),
                const SizedBox(height: 15.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Club Location',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const PickLocation(),
                const SizedBox(height: 15.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Select radius for club visibility',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      fontSize: 19.0,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                const VisibilityRangePicker(),
                const SizedBox(height: 55.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SizedBox(
        height: 55.0,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            hintText: hintText,
            // helperText: 'Keep it short, this is just a demo.',
            labelText: hintText,
            prefixText: ' ',
            suffixStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
