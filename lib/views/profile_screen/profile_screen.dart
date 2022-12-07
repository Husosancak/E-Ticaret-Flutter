import 'package:emart_app/views/profile_screen/components/detail_cart.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';

import '../../consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(top: 1, left: 8, right: 8, bottom: 4),
        child: Column(children: [
          const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.edit,
              color: whiteColor,
            ),
          ).onTap(() {}),
          Row(
            children: [
              Image.asset(
                imgProfile2,
                width: 80,
                fit: BoxFit.cover,
              ).box.roundedFull.clip(Clip.antiAlias).make(),
              10.widthBox,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy user".text.fontFamily(semibold).white.make(),
                    "huseyin.sancak@gmail.com".text.white.make(),
                  ],
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: whiteColor)),
                onPressed: () {},
                child: logout.text.fontFamily(semibold).white.make(),
              ),
            ],
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailCart(
                  count: "00",
                  title: "in your card",
                  widht: context.screenWidth / 3.4),
              detailCart(
                  count: "32",
                  title: "in your whislist",
                  widht: context.screenWidth / 3.4),
              detailCart(
                  count: "675",
                  title: "yours orders",
                  widht: context.screenWidth / 3.4),
            ],
          )
        ]),
      )),
    ));
  }
}
