import 'package:acacos/helpers/colors.dart';
import 'package:acacos/screens/main_screens/home_screen.dart';
import 'package:acacos/screens/main_screens/tabs_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/clickable_widgets/main_button.dart';

class Otp extends StatefulWidget {
  const Otp({super.key, required this.email});

  @override
  State<Otp> createState() => _OtpState();
  final String email;
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              const Text(
                '   رمز التـاكيـد',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Text(
                'قم بإدخال رمز التأكيد الذي تم ارساله للبريد ',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
               Text(
                widget.email,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                "إعادة إرسـال",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: mainColor,
                    decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 120,
              ),
              PinCodeTextField(
                appContext: context,
                length: 6,
                onChanged: (value) {},
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),
                pinTheme: PinTheme(
                    inactiveColor: mainColor.withOpacity(0.2),
                    inactiveFillColor: mainColor.withOpacity(0.1),
                    activeColor: mainColor.withOpacity(0.6),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: size.width / 7,
                    fieldWidth: size.width / 7,
                    activeFillColor: Colors.white,
                    selectedFillColor: mainColor.withOpacity(0.3)),
                cursorColor: mainColor.withOpacity(0.5),
                enableActiveFill: true,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainButton(
                text: "متابعة ",
                withBorder: false,
                isloading: false,
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) =>  const TabsScreen()));
                },
              ),
              MainButton(
                  text: " رجوع",
                  withBorder: true,
                  isloading: false,
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          )
        ],
      ),
    )));
  }
}
