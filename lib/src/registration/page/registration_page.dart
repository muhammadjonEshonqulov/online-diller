import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:online_diller/core/common/widgets/text_widgets.dart';
import 'package:online_diller/core/common/widgets/un_focus_widget.dart';
import 'package:online_diller/core/services/chuck.dart';
import 'package:online_diller/src/registration/page/widgets.dart';

import 'otp_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OnUnFocusTap(
        child: Scaffold(
          bottomNavigationBar: customButton('registration'.tr(), () {
            navKey.currentState?.push(CupertinoPageRoute(builder: (context) => const OtpPage()));
          }),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(100),
                  Center(child: textPoppins('registration'.tr(), 24, fontWeight: FontWeight.w700)),
                  const Gap(50),
                  text14Poppins('phone_number'.tr()),
                  const Gap(16),
                  phone(phoneController, (value) {}),
                  const Gap(70),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
