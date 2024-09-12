import 'package:flutter/material.dart';
import 'package:online_diller/core/common/widgets/phone_number_component.dart';
import 'package:online_diller/core/common/widgets/text_widgets.dart';
import 'package:online_diller/core/res/const_colors.dart';

Widget phone(TextEditingController phoneController, Function(String) onChanged) {
  return PhoneNumberComponent(
    fillColor: colorWhite,
    controller: phoneController,
    onChanged: onChanged,
  );
}

Widget customButton(String text, VoidCallback onPressed) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorPrimaryF4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: text16Poppins(text, color: colorPrimary),
      ),
    ),
  );
}
