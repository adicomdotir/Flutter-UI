import 'package:flutter/material.dart';
import 'package:flutter_ui/utilities/theme_styles.dart';

class FlyingDetails extends StatefulWidget {
  const FlyingDetails({super.key});

  @override
  State<FlyingDetails> createState() => _FlyingDetailsState();
}

class _FlyingDetailsState extends State<FlyingDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Odessa',
                style: ThemeStyles.departureTextStyle,
              ),
              Text(
                'Fr 6 Mar.',
                style: ThemeStyles.travelDateTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                'Ardabil',
                style: ThemeStyles.arrivalTextStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
