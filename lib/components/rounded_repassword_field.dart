import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedRePasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedRePasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Re-Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          
          border: InputBorder.none,
        ),
      ),
    );
  }
}
