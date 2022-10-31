import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/drop_down.dart';

class SortingDetails extends StatefulWidget {
  const SortingDetails({super.key});

  @override
  State<SortingDetails> createState() => _SortingDetailsState();
}

class _SortingDetailsState extends State<SortingDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [DropDown('dropDownValue')],
    );
  }
}
