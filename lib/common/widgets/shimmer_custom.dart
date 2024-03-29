import 'package:flutter_base/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCustom extends StatelessWidget {
  const ShimmerCustom({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Pallete.muted.withOpacity(.25),
      highlightColor: Colors.white,
      enabled: true,
      child: child,
    );
  }
}
