import 'package:flutter/material.dart';

class TextAppBarHead extends StatelessWidget {
  final String data;
  final Color? color;
  const TextAppBarHead(
    this.data, {
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(data,
        textAlign: TextAlign.center,
        style:
            TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w600));
  }
}

class BtnText extends StatelessWidget {
  const BtnText(
    this.label, {
    super.key,
    this.color,
    this.size,
  });

  final String label;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          fontSize: size ?? 16,
          color: color,
        ));
  }
}

class TextUnerlined extends StatelessWidget {
  final String value;
  const TextUnerlined(
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 14,
          fontWeight: FontWeight.w500),
    );
  }
}

class TextCustom extends StatelessWidget {
  final String value;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? align;
  final TextDecoration? decoration;
  final double? height;
  const TextCustom(
    this.value, {
    super.key,
    this.size,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.align,
    this.decoration,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
      style: TextStyle(
          fontSize: size ?? 14,
          color: color,
          fontWeight: fontWeight,
          decoration: decoration,
          height: height),
    );
  }
}

class TextH1 extends StatelessWidget {
  final String value;
  const TextH1(
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(value,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: .2));
  }
}

class TextSTD extends StatelessWidget {
  final Color? color;
  const TextSTD(
    this.value, {
    super.key,
    this.color,
  });
  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style:
          TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.normal),
    );
  }
}

class TextS extends StatelessWidget {
  final String value;
  final Color? color;
  const TextS(
    this.value, {
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(color: color, fontSize: 14),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.text,
    this.moreAction,
  });
  final String text;
  final VoidCallback? moreAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextCustom(
            text,
            fontWeight: FontWeight.w600,
            size: 18,
          ),
          InkWell(onTap: moreAction, child: const TextUnerlined("more"))
        ],
      ),
    );
  }
}
