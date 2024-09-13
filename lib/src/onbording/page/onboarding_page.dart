import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:online_diller/core/common/widgets/text_widgets.dart';
import 'package:online_diller/core/res/const_colors.dart';
import 'package:online_diller/core/res/const_icons.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                OnboardingPage(
                  image: ConstIcons.onboarding1,
                  title: 'Xush kelibsiz',
                  description: 'Bizning ilovamiz orqali yuridik shaxslar o‘rtasida tovarlarni tez va oson almashtish mumkin',
                  currentPage: _currentPage,
                ),
                OnboardingPage(
                  image: ConstIcons.onboarding2,
                  title: 'Qulay savdo',
                  description: 'Ulgurji savdo imkoniyatlari, xavfsiz va qulay to‘lov tizimi hamda mahsulotlar monitoringi',
                  currentPage: _currentPage,
                ),
                OnboardingPage(
                  image: ConstIcons.onboarding3,
                  title: 'Savdoni boshlang',
                  description: 'Hozirroq mobil ilovamizda ro‘yxatdan o‘ting hamda tovarlarni oson almashting',
                  currentPage: _currentPage,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => buildDot(index, context)),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentPage == index ? 32 : 16,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _currentPage == index ? colorPrimary : colorGreyF6,
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final int currentPage;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(image, width: MediaQuery.of(context).size.width * 0.4,),
          const Gap(50),
          textPoppins(title, 32, color: colorPrimary, fontWeight: FontWeight.w700),
          const Gap(20),
          text16Poppins(description, textAlign: TextAlign.center, color: colorGrey7F, fontWeight: FontWeight.w400),
        ],
      ),
    );
  }
}
