import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui/utilities/theme_colors.dart';
import 'package:flutter_ui/utilities/theme_styles.dart';
import 'package:flutter_ui/widgets/drop_down.dart';

class SortingDetails extends StatefulWidget {
  const SortingDetails({super.key});

  @override
  State<SortingDetails> createState() => _SortingDetailsState();
}

class _SortingDetailsState extends State<SortingDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'Sort by:',
                    style: ThemeStyles.dropDownTextStyle,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  DropDown('Price')
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: ThemeColors.greenLight,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        child: Container(
                          height: 16.0,
                          width: 16.0,
                          decoration: BoxDecoration(
                            color: ThemeColors.orange,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: ThemeColors.greenLight,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Icon(
                      Octicons.settings,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
