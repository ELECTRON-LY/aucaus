import 'package:acacos/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyActions extends StatefulWidget {
  const MyActions({super.key});

  @override
  State<MyActions> createState() => _MyActionsState();
}

class _MyActionsState extends State<MyActions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: mainColor.withOpacity(0.7)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: mainColor.withOpacity(0.7)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings_outlined),
            ),
          ),
        )
      ],
    );
  }
}
