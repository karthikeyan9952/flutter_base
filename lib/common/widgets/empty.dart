import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter_base/constants/size_unit.dart';
import 'package:flutter_base/utilities/extensions/context_extention.dart';
import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  /// Creates a Placeholder
  const Empty({super.key, this.size = 200});
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: context.heightQuarter() - 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              /// Image asset path
              "assets/images/No data-cuate (1).png",
              height: context.widthHalf() - 18,
            ),
            const SizedBox(height: SizeUnit.lg),
            const TextCustom("No Results found!")
          ],
        ),
      ],
    );
  }
}
