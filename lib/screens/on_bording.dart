import 'package:flutter/cupertino.dart';

import 'package:introduction_screen/introduction_screen.dart';

import '../widgets/clickable_widgets/main_button.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
   List<PageViewModel> listPagesViewModel = [

    PageViewModel(
      title: "  🇱🇾 اكتشف جمال بلادنا الحبيبة ليبيا ",
      body: '',
      decoration: const PageDecoration(imageFlex: 4),
      image: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Image.asset(
              'assets/blueLogo.png',
              fit: BoxFit.fitWidth,
              width: 80,
            ),
          ),
          Image.asset(
            'assets/intro1.png',
            fit: BoxFit.fitWidth,
            height: 280,
          )
        ],
      ),
    ),
    PageViewModel(
      title: "  🗿 احجز رحلات للمعالم المختلفة  ",
      body: '',
      decoration: const PageDecoration(imageFlex: 4),
      image: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Image.asset(
              'assets/blueLogo.png',
              fit: BoxFit.fitWidth,
              width: 80,
            ),
          ),
          Image.asset(
            'assets/intro2.png',
            fit: BoxFit.fitWidth,
            height: 280,
          )
        ],
      ),
    ),
    PageViewModel(
      title:
          " 🍔 ترغب بزيارة مكان ما؟ تعرف على المطاعم والخدمات الموجودة بالقرب منه ",
      body: '',
      decoration: const PageDecoration(imageFlex: 4),
      image: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Image.asset(
              'assets/blueLogo.png',
              fit: BoxFit.fitWidth,
              width: 80,
            ),
          ),
          Image.asset('assets/intro3.png', fit: BoxFit.fitWidth, height: 280)
        ],
      ),
    )
  ];
 
  @override
  Widget build(BuildContext context) {
    return  IntroductionScreen(
              pages: listPagesViewModel,
              showNextButton: true,
              showSkipButton: true,
              skip: const Text('تخطي'),
              done:  MainButton(
                text: 'متابعة',
                withBorder: false,
                isloading: false,
                widthFromScreen: 0.2, onPressed: (){},
              ),
              next:  MainButton(
                text: 'التـالي',
                withBorder: false,
                isloading: false,
                widthFromScreen: 0.33, onPressed: (){},
              ),
              onDone: () {
                setState(() {});

                // On button pressed
              },
              onSkip: () {

                setState(() {
                });
              },
            );
  }
}