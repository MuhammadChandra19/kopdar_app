class Validator {
  static bool isNullOrEmpty(String value) {
    return (value == null || value.trim().isEmpty);
  }

  static String isEmail(String text) {
    String pattern =
        r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
    RegExp regExp = new RegExp(pattern);
    if (text.length == 0) {
      return 'Masukkan email kamu';
    } else if (!regExp.hasMatch(text)) {
      return 'Masukkan email kamu dengan benar';
    }
    return null;
  }

  static bool isImageUrl(String text) {
    return ((text.startsWith('http') || text.startsWith('https')) &&
        (text.endsWith('.jpg') ||
            text.endsWith('.png') ||
            text.endsWith('jpeg')));
  }

  static bool isListNullOrEmpty(List value) {
    return (value == null || value.isEmpty);
  }
}
