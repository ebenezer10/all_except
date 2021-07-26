import 'package:flutter_test/flutter_test.dart';
import 'package:all_except/all_except.dart';
import 'package:flutter/src/painting/edge_insets.dart' as fEdgeInset;

void main() {
  test('all except', () {
    expect(EdgeInsets.allExcept(7, ["bottom", "top"]),
        fEdgeInset.EdgeInsets.only(right: 7, left: 7));

    expect(EdgeInsets.allExcept(10, ["right", "top"]),
        fEdgeInset.EdgeInsets.only(bottom: 10, left: 10));

    expect(EdgeInsets.allExcept(2, ["left", "right"]),
        fEdgeInset.EdgeInsets.only(top: 2, bottom: 2));
  });
}
