extension EmailValidator on String {
  bool isEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension StringManipulation on String {
  String hideMobile() {
    String input = this;
    if (input.length != 10) {
      throw ArgumentError('Input string must be exactly 10 characters long');
    }

    const String hidden = '******';
    final String prefix = input.substring(0, 2);
    final String suffix = input.substring(8, 10);

    return '$prefix$hidden$suffix';
  }
}

extension Money on String {
  String money() {
    return "\u{20B9}$this";
  }
}
