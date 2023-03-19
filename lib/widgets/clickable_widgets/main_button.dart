import 'package:acacos/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainButton extends StatefulWidget {
  const MainButton(
      {super.key,
      required this.Text,
      required this.withBorder,
      this.widthFromScreen = 0.9,
      required this.isLoading});

  final String Text;
  final bool withBorder;
  final double widthFromScreen;
  final bool isLoading;
  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: size.width * widget.widthFromScreen,
          decoration: BoxDecoration(
              color: widget.withBorder ? Colors.white : mainColor,
              border: Border.all(color: mainColor, width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: widget.isLoading
                ? const CircularProgressIndicator()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      widget.Text,
                      style: TextStyle(
                          color: widget.withBorder ? mainColor : Colors.white),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
