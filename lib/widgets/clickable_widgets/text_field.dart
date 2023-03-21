import 'package:acacos/helpers/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {super.key, this.lable, required this.hintText, required this.validator, required this.controller,  this.obSecureText=false, this.perfix});
  final String? lable;
  final String hintText;
  final FormFieldValidator<String?> validator;
  final TextEditingController controller;
  final bool obSecureText;
  final Widget? perfix;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (widget.lable != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.lable ?? "",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
                controller: widget.controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.validator,
                obscureText: widget.obSecureText,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.0, horizontal: 16),
                  suffixIcon: widget.perfix,
                  fillColor: mainColor.withOpacity(0.2),
                  filled: true,
                  hintText: widget.hintText,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(color: mainColor.withOpacity(0.2))),
                  focusColor: mainColor.withOpacity(0.2),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(color: mainColor.withOpacity(0.4))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          BorderSide(color: mainColor.withOpacity(0.2))),
                ))
          ],
        ),
      ),
    );
  }
}