import 'package:flutter/material.dart';

class Eco9jaCustomButton extends StatelessWidget {
  final String? ButtonText;
  final Function()? onPressed;
  const Eco9jaCustomButton({
    super.key,
    required this.ButtonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
      onPressed: onPressed,
      child: Text('$ButtonText'),
    );
  }
}
