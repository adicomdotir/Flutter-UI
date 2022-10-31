import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui/utilities/theme_colors.dart';
import 'package:flutter_ui/utilities/theme_styles.dart';

class TicketCard extends StatefulWidget {
  final int price;
  final String destinationCode;
  final String originCode;
  final String arrivalTime;
  final String departureTime;
  final String totalTime;
  final bool ticketType;

  TicketCard({
    super.key,
    required this.price,
    required this.destinationCode,
    required this.originCode,
    required this.arrivalTime,
    required this.departureTime,
    required this.ticketType,
    required this.totalTime,
  });

  @override
  State<TicketCard> createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 20.0,
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35.0,
                    vertical: 30.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$${widget.price}',
                            style: ThemeStyles.ticketPriceTextStyle,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fr 6 Mar.',
                            style: ThemeStyles.greyTextStyle,
                          ),
                          Text(
                            'Fr 6 Mar.',
                            style: ThemeStyles.greyTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.originCode,
                            style: ThemeStyles.mainBlackTextStyle,
                          ),
                          Text(
                            widget.destinationCode,
                            style: ThemeStyles.mainBlackTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.departureTime,
                            style: ThemeStyles.subBlackTextStyle,
                          ),
                          Text(
                            widget.arrivalTime,
                            style: ThemeStyles.subBlackTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.blur_on,
                            color: Colors.grey,
                          ),
                          Text('- - - - - - - - - - - - - -'),
                          Icon(
                            Entypo.aircraft_take_off,
                            color: Colors.grey,
                          ),
                          Text('- - - - - - - - - - - - - -'),
                          Icon(
                            Icons.blur_on,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.totalTime,
                            style: ThemeStyles.greyTextStyle,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.ticketType ? ThemeColors.orange : Colors.grey,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  height: 70.0,
                  width: 100.0,
                  child: widget.ticketType
                      ? const Center(
                          child: Text(
                            'TOP',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : const Center(
                          child: Text(
                            'MED',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
