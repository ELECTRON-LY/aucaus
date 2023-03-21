import 'package:acacos/screens/auth_screens/otp.dart';
import 'package:acacos/widgets/clickable_widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/clickable_widgets/main_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController resetemailcontroler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  const Text(
                    'اعادة تعيين كلمة السر',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'قم بادخال البريد الالكتروني لاستلام رمز التأكيد',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  MyTextField(
                    controller:resetemailcontroler ,
                    lable: 'البريد الإلكتروني',
                    hintText: "example@mail.com",
                    validator: (value) {
                      return null;
                    },
                  ),
                ],
              ),
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
                        CupertinoPageRoute(builder: (context) =>  Otp(email:resetemailcontroler.text)));
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
      ),
    );
  }
}
