import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui/components/flight_tickets.dart';
import 'package:flutter_ui/components/flying_details.dart';
import 'package:flutter_ui/components/sorting_details.dart';
import 'package:flutter_ui/components/tabs.dart';
import 'package:flutter_ui/utilities/theme_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 490,
          decoration: BoxDecoration(
            color: ThemeColors.green,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(45.0),
              bottomRight: Radius.circular(45.0),
            ),
          ),
        ),
        Container(
          child: Column(
            children: const [
              SizedBox(
                height: 10.0,
              ),
              FlyingDetails(),
              SizedBox(
                height: 20.0,
              ),
              SortingDetails(),
              SizedBox(
                height: 15.0,
              ),
              MyTabs(),
              SizedBox(
                height: 10.0,
              ),
              FlightTickets()
            ],
          ),
        )
      ],
    );
  }
}
