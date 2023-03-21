import 'package:acacos/helpers/colors.dart';
import 'package:acacos/screens/auth_screens/register_screen.dart';
import 'package:acacos/screens/auth_screens/reset_password.dart';
import 'package:acacos/screens/main_screens/home_screen.dart';
import 'package:acacos/widgets/clickable_widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/clickable_widgets/main_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/signInBG.png',
                  width: size.width,
                  height: size.height * 0.4,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "مرحبا بك في تطبيق اكاكوس!",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  MyTextField(
                    lable: 'البريد الإلكتروني',
                    controller: emailController,
                    hintText: 'أدخل البريد الالكتروني',
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "ادخل البريد الالكتروني";
                      }
                      if (!value.contains('@') || !value.contains('.com')) {
                        return "بريدك غلط";
                      }
                      return null;
                    },
                  ),
                  MyTextField(
                    lable: 'كلمة المرور',
                    hintText: 'أدخل كلمة المرور',
                    controller: passwordController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "الرجاء ادخال كلمة المرور";
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: ((context) =>
                                      const ResetPassword())));
                        },
                        child: Text(
                          "إعادة تعيين",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: mainColor,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      const Text(
                        "هل نسيت كلمة المرور ؟",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  MainButton(
                      text: "تسجيل دخول",
                      withBorder: false,
                      isloading: false,
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const HomeScreen(),
                            ));
                      }),
                  MainButton(
                      text: "ليس لديك حساب؟ سجل الآن",
                      withBorder: true,
                      isloading: false,
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: ((context) =>
                                    const RegisterScreen())));
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
