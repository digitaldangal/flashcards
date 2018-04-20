import 'package:flutter/material.dart';

const String commonIconPath = "packages/flashcards_common/assets/icons/";

// todo: switch image quality based on mobile needs
// https://i.stack.imgur.com/I8ioG.png

// fixme: https://github.com/flutter/flutter/issues/1831
// Flutter does not support svg (yet?), so we will hold everything as svg
// for future exports and png for usage

class FlashcardsIcons {
  static Widget _Icon(String path, {double size}) {
    return Image(
      image: AssetImage(path),
      width: size,
      height: size,
      color: null,
    );
  }

  static Widget Google({size: 18.0}) {
    return FlashcardsIcons._Icon(commonIconPath + "google_logo.png", size: size);
  }
}
