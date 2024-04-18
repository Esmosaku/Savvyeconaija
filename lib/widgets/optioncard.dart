import 'package:flutter/material.dart';

class optionCard extends StatelessWidget {
  final String? option;
  final String? optionquestion;
  final Function()? onPressed;
  const optionCard({
    super.key,
    required this.option,
    required this.optionquestion, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
          side: MaterialStateProperty.all<BorderSide>(
              BorderSide(color: Color(0xff178843))),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.grey.withOpacity(0.2);
              }
              // ignore: null_check_always_fails
              return null!; // Defer to the default value for other states
            },
          ),
        ),
        onPressed: onPressed,
        child: Container(
          height: 65.0,
          child: Row(
            children: <Widget>[
              Text(
                '$option',
                style: TextStyle(fontSize: 18.0, color: Colors.green),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                '$optionquestion',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ],
          ),
        ));
  }
}
