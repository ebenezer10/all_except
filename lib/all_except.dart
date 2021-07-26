library all_except;

// ignore: implementation_imports
import 'package:flutter/src/painting/edge_insets.dart' as flutterEdgeInset;

class EdgeInsets {
  static allExcept(double value, List<String> sides) {
    List<String> _allSides = ["left", "top", "right", "bottom"];
    double _left = 0, _top = 0, _right = 0, _bottom = 0;

    for (String side in sides) {
      _allSides.remove(side);
    }

    if (_allSides.contains("left")) {
      _left = value;
    }

    if (_allSides.contains("top")) {
      _top = value;
    }

    if (_allSides.contains("right")) {
      _right = value;
    }

    if (_allSides.contains("bottom")) {
      _bottom = value;
    }
    return flutterEdgeInset.EdgeInsets.only(
        left: _left, top: _top, right: _right, bottom: _bottom);
  }
}
