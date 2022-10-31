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
      child: DropdownButton<String>(
        onChanged: (String? newValue) {
          setState(() {
            widget.dropDownValue = newValue ?? '';
          });
        },
        value: widget.dropDownValue,
        dropdownColor: ThemeColors.greenLight,
        items: <String>['Price', 'Stops', 'Arrival', 'Departure']
            .map<DropdownMenuItem<String>>((String newValue) {
          return DropdownMenuItem<String>(
            child: Text(
              newValue,
              style: ThemeStyles.dropDownTextStyle,
            ),
            value: newValue,
          );
        }),
        icon: Icon(
          SimpleLineIcons.arrow_down,
          size: 12.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
