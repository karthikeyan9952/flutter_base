import 'dart:io';

import 'package:flutter_base/constants/size_unit.dart';
import 'package:flutter_base/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerCustom {
  Future<File?> handlePickImage(BuildContext context) async {
    ImageSource? source = await getImageSource(context);
    if (source == null) return null;
    XFile? image = await ImagePicker().pickImage(source: source);
    if (image == null) return null;
    return File(image.path);
  }

  Future<ImageSource?> getImageSource(BuildContext context) async {
    return await showModalBottomSheet<ImageSource?>(
      context: context,
      builder: (BuildContext context) {
        return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(SizeUnit.lg),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => context.pop(ImageSource.camera),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(CupertinoIcons.camera,
                          size: 28, color: Palette.primary),
                      SizedBox(height: SizeUnit.sm / 2),
                      Text("Camera")
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => context.pop(ImageSource.gallery),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(CupertinoIcons.photo,
                          size: 28, color: Palette.primary),
                      SizedBox(height: SizeUnit.sm / 2),
                      Text("Gallery")
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
