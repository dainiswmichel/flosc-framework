// file: lib/utils/app_styles.dart
// author: Dainis W. Michel https://github.com/dainiswmichel
// Description: This file contains the styles and widgets used throughout the app to ensure a consistent look and feel. It includes text field styles, button styles, and utility functions for padding and centering text.

import 'package:flutter/material.dart';

// TextField Styles
// This style is used for all text fields in the app.
final textFieldStyle = InputDecoration(
  hintText: 'Enter your email',
  alignLabelWithHint: true,
);

// Global padding style
// This EdgeInsets is used for padding throughout the app.
const EdgeInsets globalPadding = EdgeInsets.all(16.0);

// Utility function to center text within a container
// This function returns a Center widget containing a Text widget.
Widget centeredText(String text) {
  return Center(
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16.0,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

// Card Styles
// This function returns a styled Card widget.
// It requires a child widget and optional backgroundColor, elevation, and borderRadius.
Widget styledCard({
  required Widget child,
  Color? backgroundColor,
  double? elevation,
  BorderRadius? borderRadius,
}) {
  return Card(
    margin: const EdgeInsets.all(12.0),
    elevation: elevation ?? 5.0,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(5.0),
    ),
    color: backgroundColor,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: child,
    ),
  );
}

// IconButton Styles
// This function returns a styled IconButton widget.
// It requires an icon and onPressed parameters.
IconButton socialMediaButton(IconData icon, {required VoidCallback onPressed}) {
  return IconButton(
    icon: Icon(icon),
    onPressed: onPressed,
  );
}

// StyledElevatedButton
// This section covers the styling and behavior of a button.
// It allows for easy customization of the button's appearance.
class StyledElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsets? padding;

  StyledElevatedButton({
    required this.onPressed,
    required this.buttonText,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? Colors.blue),
        foregroundColor:
            MaterialStateProperty.all(foregroundColor ?? Colors.white),
        padding: MaterialStateProperty.all(
            padding ?? EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        )),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}

// Sample Button Styles

final ButtonStyle Button1 = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  elevation: MaterialStateProperty.all<double>(5),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  ),
);



// Button Styles



// URL1: https://flutter.dev/docs/cookbook/design/buttons
// URL2: https://api.flutter.dev/flutter/material/ButtonStyle-class.html
// URL3: https://api.flutter.dev/flutter/material/ElevatedButton/styleFrom.html