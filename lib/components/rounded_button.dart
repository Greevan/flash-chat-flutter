import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  Color custColor;
  String? custText;
  VoidCallback onPressed;
  RoundedButton({
    required this.custColor,
    required this.custText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: custColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            custText!,
          ),
        ),
      ),
    );
  }
}