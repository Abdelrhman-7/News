import 'package:flutter/material.dart';

class DividerItem extends StatelessWidget {
  const DividerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: Colors.grey, thickness: 2, endIndent: 20, indent: 20);
  }
}
