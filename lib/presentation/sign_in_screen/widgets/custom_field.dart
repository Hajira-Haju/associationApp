import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.label,
    this.isObscure = false,
    this.suffix,
    required this.prefix,
  });
  final String label;
  final bool isObscure;
  final Widget? suffix;
  final IconData prefix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Icon(prefix),
          labelText: label,
          suffixIcon: suffix,
          labelStyle: TextStyle(color: Colors.brown.shade300),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.brown),
          ),
        ),
      ),
    );
  }
}
