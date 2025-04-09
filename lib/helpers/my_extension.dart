import 'package:flutter/material.dart';

extension View on num {
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());
}

extension View2 on Widget {
  Widget get start => Align(alignment: Alignment.centerLeft, child: this);
  Widget get end => Align(alignment: Alignment.centerRight, child: this);
  Widget get center => Align(child: this);
}


