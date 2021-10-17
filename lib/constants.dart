import 'dart:ui';

const kTextColor = Color(0xFF131313);
const kLightTextColor = Color(0xFFA0A9B3);
const kBackgroundColor = Color(0xFFF9F8FD);
const kIconColor = Color(0xFF666666);

final kGrass =  colorConvert("#40c8a8");
final kFire =  colorConvert("#f7796c");
final kWater =  colorConvert("#58acf6");
final kElectric =  colorConvert("#ffcf4a");
final kPoison =  colorConvert("#7d528e");
final kEarth=  colorConvert("#b2736d");

const double kDefaultPadding = 20.0;


Color? colorConvert(String color) {
  color = color.replaceAll("#", "");
  if (color.length == 6) {
    return Color(int.parse("0xFF"+color));
  } else if (color.length == 8) {
    return Color(int.parse("0x"+color));
  }
}