import 'package:flutter/material.dart';

import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  final String buttonLabel;
  const FormButton({
    Key? key,
    required this.disabled,
    this.buttonLabel = 'Next',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size5),
          color:
              disabled ? Colors.grey.shade300 : Theme.of(context).primaryColor,
        ),
        duration: const Duration(milliseconds: 300),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: Text(
            buttonLabel,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
