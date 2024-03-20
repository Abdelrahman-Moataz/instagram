import 'package:flutter/material.dart';


class LoginFormField extends StatelessWidget {

  final String? title;
  final Widget? icon;
  final String? Function(String?)? onPress;

   const LoginFormField({
    super.key,
     required this.title,
     this.icon,
     required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: onPress,
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: "$title",
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey
          ),
        ),
      ),
    );
  }
}
