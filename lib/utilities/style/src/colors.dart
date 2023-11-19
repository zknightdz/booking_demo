part of style;

abstract class _NIXOThemeColor {
  ///primary color
  abstract Color primaryBrand900;
  abstract Color primaryBrand500;
  abstract Color white900;
  abstract Color coolGray900;
  abstract Color blueGray400;
  abstract Color blueGray100;
}

class _NIXOLightTheme extends _NIXOThemeColor {
  @override
  Color primaryBrand900 = HexColor.fromHex('#363062');
  @override
  Color primaryBrand500 = HexColor.fromHex('#8683A1');
  @override
  Color white900 = HexColor.fromHex('#FFFFFF');
  @override
  Color coolGray900 = HexColor.fromHex('#111827');
  @override
  Color blueGray400 = HexColor.fromHex('#94A3B8');
  @override
  Color blueGray100 = HexColor.fromHex('#EBF0F5');
}

class _NIXODarkTheme extends _NIXOThemeColor {
  @override
  Color primaryBrand900 = HexColor.fromHex('#363062');
  @override
  Color primaryBrand500 = HexColor.fromHex('#8683A1');
  @override
  Color white900 = HexColor.fromHex('#FFFFFF');
  @override
  Color coolGray900 = HexColor.fromHex('#111827');
  @override
  Color blueGray400 = HexColor.fromHex('#94A3B8');
  @override
  Color blueGray100 = HexColor.fromHex('#EBF0F5');
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
