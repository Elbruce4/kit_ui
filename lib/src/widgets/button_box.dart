import 'package:flutter/material.dart';
import 'package:kit_ui/src/shared/colors.dart';

class ButtonBox extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool disabled;

  const ButtonBox({
    super.key,
    required this.title,
    this.onTap,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 200,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: disabled
              ? kcMediumGreyColor.withValues(alpha: 0.6)
              : kSecondaryPColor,
          boxShadow: disabled
              ? []
              : [
                  BoxShadow(
                    color: kSecondaryPColor.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
          gradient: disabled
              ? null
              : LinearGradient(
                  colors: [
                    kSecondaryPColor.withValues(alpha: 0.95),
                    kSecondaryPColor.withValues(alpha: 0.75),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: disabled
                  ? Colors.black.withValues(alpha: 0.54)
                  : Colors.white,
              letterSpacing: 0.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
