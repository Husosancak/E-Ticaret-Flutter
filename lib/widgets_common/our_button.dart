import 'package:emart_app/consts/consts.dart';

Widget ourButton({onpress, color, textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color, padding: const EdgeInsets.all(12.0)),
      onPressed: onpress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
