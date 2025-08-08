import 'package:flutter/material.dart';
import 'package:kit_ui/src/shared/colors.dart';

class ButtonBox extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool disabled;

  ButtonBox({
    super.key,
    required this.title,
    this.onTap,
    this.disabled = false
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 150,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: disabled ? kcMediumGreyColor : kPrimaryColor
        ),
        child: Text(title),
      ),
    );
  }
}