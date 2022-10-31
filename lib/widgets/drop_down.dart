import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui/utilities/theme_colors.dart';
import 'package:flutter_ui/utilities/theme_styles.dart';

class DropDown extends StatefulWidget {
  String dropDownValue;
  DropDown(this.dropDownValue, {super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeColors.greenLight,
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: 30.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        child: DropdownButton<String>(
          onChanged: (String? newValue) {
            setState(() {
              widget.dropDownValue = newValue ?? '';
            });
          },
          value: widget.dropDownValue,
          dropdownColor: ThemeColors.greenLight,
          items: ['Price', 'Stops', 'Arrival', 'Departure'].map(
            (String newValue) {
              return DropdownMenuItem<String>(
                value: newValue,
                child: Text(
                  newValue,
                  style: ThemeStyles.dropDownTextStyle,
                ),
              );
            },
          ).toList(),
          icon: const Icon(
            SimpleLineIcons.arrow_down,
            size: 12.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
