import 'dart:ui';

class AppColor{
  static Color navBarColor = HexColor('#2A313B');
  static Color categoryTextColor = HexColor('#EDAF21');
  static Color poksBackgroundColor = HexColor('#FFC313');

}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}