import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:review_apple_watch/constanta.dart';
import 'package:review_apple_watch/global_provider.dart';
import 'package:review_apple_watch/widget/description.dart';
import 'package:review_apple_watch/widget/opsi_colors.dart';
import 'package:review_apple_watch/widget/size.dart';
import 'package:review_apple_watch/widget/specification.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String tagline = "The future of health is on your wrist.";
    return Consumer<GlobalProvider>(
      builder: (context, globalProvider, _) => Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Stack(
          children: [
            //Tagline
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: SizedBox(
                width: Get.width / 2,
                child: globalProvider.isHidden == false
                    ? Text(
                        tagline,
                        style: const TextStyle(
                            fontSize: 35,
                            color: black,
                            fontFamily: "InterBold"),
                      )
                    : const SizedBox(),
              ),
            ),
            //Black Container expanded
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutBack,
                height: globalProvider.isHidden == false
                    ? Get.height / 2.3
                    : Get.height,
                width: Get.width,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (globalProvider.isSkobeloff == true) ...[
                                const Text(
                                  "Skobeloff",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: white,
                                      fontFamily: "InterBold"),
                                ),
                              ] else if (globalProvider.isRed == true) ...[
                                const Text(
                                  "Red",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: white,
                                      fontFamily: "InterBold"),
                                ),
                              ] else if (globalProvider.isImperial == true) ...[
                                const Text(
                                  "Imperial",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: white,
                                      fontFamily: "InterBold"),
                                ),
                              ] else if (globalProvider.isWhite == true) ...[
                                const Text(
                                  "White",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: white,
                                      fontFamily: "InterBold"),
                                ),
                              ]
                            ],
                          ),
                          IconButton(
                              autofocus: false,
                              onPressed: () {
                                globalProvider.isHidden =
                                    !globalProvider.isHidden;
                              },
                              icon: SvgPicture.asset(
                                globalProvider.isHidden == true
                                    ? "assets/icons/collapse.svg"
                                    : "assets/icons/expand.svg",
                                height: 16,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: DefaultTabController(
                        animationDuration: const Duration(seconds: 1),
                        length: 2,
                        initialIndex: 0,
                        child: Scaffold(
                          backgroundColor: Colors.transparent,
                          appBar: TabBar(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 23,
                            ),
                            tabs: const [
                              Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 16, fontFamily: "InterBold"),
                              ),
                              Text(
                                "Specification",
                                style: TextStyle(
                                    fontSize: 16, fontFamily: "InterBold"),
                              ),
                            ],
                            indicatorColor: white,
                            indicatorWeight: 4,
                            labelPadding: const EdgeInsets.only(bottom: 10),
                            physics: const BouncingScrollPhysics(),
                            unselectedLabelColor: grey,
                            labelColor: white,
                            // indicatorSize: TabBarIndicatorSize.label,
                            indicator: const UnderlineTabIndicator(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 3.0,
                                ),
                                insets: EdgeInsets.symmetric(horizontal: 70.0)),
                            splashFactory: NoSplash.splashFactory,
                            overlayColor: MaterialStateColor.resolveWith(
                                (states) => Colors.transparent),
                          ),
                          body: const TabBarView(
                            children: [
                              Desc(),
                              Spec(),
                            ],
                          ),
                          bottomNavigationBar: Container(
                            height: 60,
                            width: Get.width,
                            color: yellow,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 23),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Checkout:",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: "InterBold"),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: black),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Rp. 7.499.000",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: white,
                                            fontFamily: "InterBold"),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                        "assets/icons/ForwardArrow.svg",
                                        height: 15,
                                        color: white,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //Size
            globalProvider.isHidden == false
                ? SizedBox(
                    height: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 150,
                            width: 50,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            decoration: const BoxDecoration(
                                color: black,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Size",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: white,
                                      fontFamily: "InterBold"),
                                ),
                                OpsiSize(
                                  size: "40",
                                  color1: white,
                                  color2: black,
                                ),
                                OpsiSize(
                                  size: "44",
                                  color1: black,
                                  color2: white,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 200,
                          width: 50,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 18),
                          decoration: const BoxDecoration(
                              color: black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )),
                          child: ListenableProvider<GlobalProvider>(
                            create: (context) => globalProvider,
                            builder: (context, _) => Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                StockColors(
                                  ispick: globalProvider.isSkobeloff,
                                  color: skobeloff,
                                  press: () {
                                    globalProvider.pickSkobeloff();
                                  },
                                ),
                                StockColors(
                                  ispick: globalProvider.isRed,
                                  color: red,
                                  press: () {
                                    globalProvider.pickRed();
                                  },
                                ),
                                StockColors(
                                    ispick: globalProvider.isImperial,
                                    color: imperial,
                                    press: () {
                                      globalProvider.pickImperial();
                                    }),
                                StockColors(
                                  ispick: globalProvider.isWhite,
                                  color: white,
                                  press: () {
                                    globalProvider.pickWhite();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            //Watches
            globalProvider.isHidden == false
                ? Container(
                    height: Get.height / 1.9,
                    width: Get.width,
                    alignment: Alignment.bottomCenter,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (globalProvider.isSkobeloff == true) ...[
                          const Image(
                            image: AssetImage("assets/images/iwatch_tosca.png"),
                            height: 300,
                          ),
                        ] else if (globalProvider.isRed == true) ...[
                          const Image(
                            image: AssetImage("assets/images/iwatch_red.png"),
                            height: 300,
                          ),
                        ] else if (globalProvider.isImperial == true) ...[
                          const Image(
                            image:
                                AssetImage("assets/images/iwatch_purple.png"),
                            height: 300,
                          ),
                        ] else if (globalProvider.isWhite == true) ...[
                          const Image(
                            image: AssetImage("assets/images/iwatch_white.png"),
                            height: 300,
                          ),
                        ]
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
