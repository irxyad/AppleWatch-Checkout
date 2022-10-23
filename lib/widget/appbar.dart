import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:review_apple_watch/constanta.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle().copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 16, color: black, fontFamily: "InterBold"),
      ),
      leading: IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/BackArrow.svg",
            height: 17,
            color: black,
          )),
      actions: [
        IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: SvgPicture.asset(
              "assets/icons/Cart.svg",
              height: 17,
              color: black,
            )),
      ],
    );
  }
}
