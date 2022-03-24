import 'package:flutter/material.dart';
import 'package:review_page/utilities/size_config.dart';

const kMyColor = Color(0xFF24D07A);

EdgeInsets containerPadding = EdgeInsets.symmetric(
  horizontal: getPropScreenWidth(10.0),
);

EdgeInsets containerMargin = EdgeInsets.symmetric(
  horizontal: getPropScreenWidth(10.0),
);

Divider divider = Divider(
  indent: getPropScreenWidth(9.0),
  endIndent: getPropScreenWidth(9.0),
  height: getPropScreenWidth(9.0),
);

double twelveFontSize = getAdaptiveFontSize(12.0);

double fourteenFontSize = getAdaptiveFontSize(14.0);
