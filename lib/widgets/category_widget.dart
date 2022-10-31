import 'package:flutter/material.dart';
import 'package:flutter_ui/models/category.dart';
import 'package:flutter_ui/services/app_state.dart';
import 'package:flutter_ui/utilities/theme_colors.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategory == category.categoryId;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateCategory(category.categoryId);
        }
      },
      child: Container(
        width: 110,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
            child: Text(
          category.name,
          style: isSelected
              ? TextStyle(color: ThemeColors.green)
              : const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
