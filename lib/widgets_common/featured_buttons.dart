import 'package:emart_app/consts/consts.dart';

Widget featuredButtons({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 50,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .width(200)
      .padding(const EdgeInsets.all(4.0))
      .white
      .roundedSM
      .outerShadowSm
      .make();
}
