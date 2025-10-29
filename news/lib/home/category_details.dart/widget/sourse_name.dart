import 'package:flutter/material.dart';
import 'package:news/model/SourseResponse.dart';

class SourseName extends StatelessWidget {
  const SourseName({super.key, required this.sourse, required this.isSelected});
  final Sources sourse;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Text(
      sourse.name ?? '', //if return null = ''
      style: isSelected
          ? Theme.of(context).textTheme.bodyLarge
          : Theme.of(context).textTheme.bodyMedium,
    );
  }
}
