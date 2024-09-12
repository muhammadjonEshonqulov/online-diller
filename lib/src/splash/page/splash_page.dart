import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_diller/core/common/widgets/text_widgets.dart';
import 'package:online_diller/core/res/const_colors.dart';
import 'package:online_diller/core/services/chuck.dart';
import 'package:online_diller/src/registration/page/registration_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _visible = false;
  bool _animateTop = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      navKey.currentState?.pushAndRemoveUntil(CupertinoPageRoute(builder: (_) => const RegistrationPage()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: AnimatedSlide(
          offset: Offset(0, _animateTop ? -1.4 : 0),
          duration: const Duration(seconds: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [text18Poppins("ONLINE-DILLER.UZ", color: colorPrimary, fontWeight: FontWeight.w700)],
          ),
        ),
      ),
    );
  }
}
