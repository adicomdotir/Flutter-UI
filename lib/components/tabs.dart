import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui/models/category.dart';
import 'package:flutter_ui/services/app_state.dart';
import 'package:flutter_ui/widgets/category_widget.dart';
import 'package:provider/provider.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 30.0,
          ),
          child: Consumer<AppState>(
            builder: (context, value, _) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 45.0,
                  width: MediaQuery.of(context).size.width - 82,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ),
                  child: Row(
                    children: [
                      for (final category in categories)
                        CategoryWidget(
                          category: category,
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
