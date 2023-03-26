import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropDown<T> extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown<T>> createState() => _CustomDropDownState<T>();
}

class _CustomDropDownState<T> extends State<CustomDropDown<T>> {
  final List<String> items = [
    'California - USA',
    'New York - USA',
    'Washington - USA',
    'Brooklyn - USA',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown.shade900,
        borderRadius: BorderRadius.circular(5)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          buttonPadding: EdgeInsets.symmetric(horizontal: 14),
          isExpanded: true,
          dropdownDecoration: const BoxDecoration(color: Colors.brown),
          hint: const Text(
            'Select Location',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          buttonHeight: 50,
          buttonWidth: double.infinity,
          itemHeight: 40,
          icon: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.brown),
            child: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
