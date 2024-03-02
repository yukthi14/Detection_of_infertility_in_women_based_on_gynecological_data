import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class WebTextStyle {
  static TextStyle headerTextStyle({required color, double fontSize = 18}) {
    return GoogleFonts.signikaNegative(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle montserratStyle({required color, double fontSize = 24}) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
    );
  }
}
