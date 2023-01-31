import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:review_apple_watch/app/utils/constanta.dart';
import 'package:review_apple_watch/app/utils/global_provider.dart';

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
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, color: black, fontFamily: "InterBold"),
          ),
          const SizedBox(height: 5),
          Consumer<GlobalProvider>(
            builder: (context, gP, _) => Text(
              'Color: ${gP.watchColor}',
              style: TextStyle(
                  fontSize: 14,
                  color: black.withOpacity(.5),
                  fontFamily: "Inter"),
            ),
          ),
        ],
      ),
      leading: IconButton(
        splashRadius: 20,
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/BackArrow.svg",
          height: 17,
          color: black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          splashRadius: 20,
          icon: SvgPicture.asset(
            "assets/icons/Cart.svg",
            height: 17,
            color: black,
          ),
        ),
      ],
    );
  }
}
