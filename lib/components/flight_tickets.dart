import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/ticket_card.dart';

class FlightTickets extends StatelessWidget {
  const FlightTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
          TicketCard(
            price: 100,
            originCode: 'ODS',
            destinationCode: 'CA(LXS)',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),
        ],
      ),
    );
  }
}
