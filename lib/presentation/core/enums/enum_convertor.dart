class EnumConvertor {
  static String enumtoString(dynamic enumValue) {
    return enumValue.toString().split('.').last;
  }
}
