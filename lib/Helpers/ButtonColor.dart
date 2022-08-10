import 'package:flutter/material.dart';

class ButtonStyling {
  Color primary;
  Color hovered;
  Color clicked;
  Color text;
  ButtonStyling({this.primary, this.hovered, this.clicked, this.text});
  ButtonStyle createButtonStyling() {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return clicked;
      } else if (states.contains(MaterialState.hovered)) {
        return hovered;
      } else {
        return primary;
      }
    }), textStyle: MaterialStateProperty.resolveWith((states) {
      return TextStyle(color: text);
    }));
  }
}
