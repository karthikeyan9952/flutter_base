import 'package:flutter_base/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCustom extends StatelessWidget {
  /// The main layout of loading
  ///
  /// Typically a [Container] with any [Color]
  final Widget child;

  /// Creates a loading effect over it's child using [Shimmer]
  ///
  /// ```dart
  ///  ShimmerCustom(
  ///   child: Container(
  ///     height: 100,
  ///     width: 200,
  ///     decoration: BoxDecoration(
  ///     color: Colors.amber,
  ///     borderRadius: BorderRadius.circular(12)),
  ///  ))
  /// ```
  const ShimmerCustom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Palette.muted.withOpacity(.25),
      highlightColor: Colors.white,
      enabled: true,
      child: child,
    );
  }
}
