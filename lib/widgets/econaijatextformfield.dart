import 'package:flutter/material.dart';


class Eco9jaTextFormField extends StatelessWidget {
   final String? labelText;
  final String? hintText;
  const Eco9jaTextFormField({super.key, 
    
   required this.labelText, required this.hintText
  });
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.greenAccent),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.green,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        validator: (value) {
          if (value==null || value.isEmpty)  {
            return 'required';
      
          }
          return null;
        },
      ),
    );
  }
}