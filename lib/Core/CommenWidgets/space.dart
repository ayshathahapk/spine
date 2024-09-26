import 'package:flutter/material.dart';
import 'package:flutterspine/Core/Utils/size_utils.dart';

Widget space({double? h, double? w}) {
  return SizedBox(
    height: h ?? 20.v,
    width: w ?? 0.v,
  );
}
