import 'package:get/get.dart';
import '../../consts/consts.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          'Join to $appname'.text.fontFamily(bold).size(18).white.make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: nameHint, title: name),
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordHint, title: password),
              customTextField(hint: passwordHint, title: retypePassword),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: forgetPass.text.make(),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: redColor,
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = value;
                      });
                    },
                  ),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'I agre to the ',
                            style:
                                TextStyle(fontFamily: regular, color: fontGrey),
                          ),
                          TextSpan(
                            text: termAndCond,
                            style:
                                TextStyle(fontFamily: regular, color: redColor),
                          ),
                          TextSpan(
                            text: ' & ',
                            style:
                                TextStyle(fontFamily: regular, color: fontGrey),
                          ),
                          TextSpan(
                            text: privacyPolicy,
                            style:
                                TextStyle(fontFamily: regular, color: redColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              5.heightBox,
              ourButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: singup,
                      textColor: whiteColor,
                      onpress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor)),
                  ],
                ),
              ).onTap(() {
                Get.back();
              })
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make()
        ]),
      ),
    ));
  }
}
