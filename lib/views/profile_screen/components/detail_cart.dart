import '../../../consts/consts.dart';

Widget detailCart({widht, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.color(darkFontGrey).fontFamily(bold).size(16).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .roundedSM
      .width(widht)
      .height(60)
      .padding(const EdgeInsets.all(4))
      .make();
}
