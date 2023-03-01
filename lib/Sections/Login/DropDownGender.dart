import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class DropDownGender extends StatefulWidget {
  final controller;
  final String justText;
  bool? obscureText;

  DropDownGender({
    super.key,
    required this.controller,
    required this.justText,
    this.obscureText,
  });

  @override
  State<DropDownGender> createState() => _DropDownGenderState();
}

class _DropDownGenderState extends State<DropDownGender> {
  final List<String> items = [
    'Male',
    'Female',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: const [
            Expanded(
              child: Text(
                "Gender",
                style: TextStyle(
                  fontSize: 16,
                  color: kSecondPrimaryColor,
                  fontFamily: 'Product Sans',
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kSecondPrimaryColor,
                        fontFamily: 'Product Sans'),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        icon: const Icon(
          Icons.arrow_drop_down_outlined,
        ),
        iconSize: 20,
        iconEnabledColor: kSecondPrimaryColor,
        iconDisabledColor: Colors.grey,
        buttonHeight: 65,
        buttonWidth: MediaQuery.of(context).size.width * 0.40,
        buttonPadding: const EdgeInsets.only(
          left: 14,
          right: 14,
        ),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: kTextFieldColor,
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(
          left: 14,
          right: 14,
        ),
        dropdownMaxHeight: 200,
        dropdownWidth: 150,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Color(0xFF30276a),
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(0, 0),
      ),
    );
  }
}
