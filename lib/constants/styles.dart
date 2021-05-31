
import 'package:flutter/material.dart';

//colors
const kWhite = Colors.white;
const kBlack = Colors.black;

//textstyles
normalTextStyle(_width) => TextStyle(
  color: kWhite,
  fontSize: _width * 0.05,
);

smallTextStyle(_width) => TextStyle(
  color: kWhite,
  fontSize: _width * 0.04
);

optionsTextStyle(_width) => TextStyle(
  color: kBlack,
  fontSize: _width * 0.05,
);

titleTextStyle(_width) => TextStyle(
  color: kWhite,
  fontSize: _width * 0.1,
);

resultTextStyle(_width) => TextStyle(
  color: kWhite,
  fontSize: _width * 0.15,
  fontWeight: FontWeight.bold,
);