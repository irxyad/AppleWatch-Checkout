import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:review_apple_watch/app/utils/constanta.dart';
import 'package:review_apple_watch/app/utils/global_provider.dart';
import 'package:review_apple_watch/app/widget/description.dart';
import 'package:review_apple_watch/app/widget/opsi_colors.dart';
import 'package:review_apple_watch/app/widget/size.dart';
import 'package:review_apple_watch/app/widget/specification.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String tagline = "The future of health is on your wrist.";
    return Consumer<GlobalProvider>(
      builder: (context, globalProvider, _) => Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Stack(
          children: [
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
                  padding: const EdgeInsets.only(top: 50),
                  decoration: const BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      )),
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
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.miniEndFloat,
                      floatingActionButton: GestureDetector(
                        onTap: () =>
                            globalProvider.isHidden = !globalProvider.isHidden,
                        child: CircleAvatar(
                            backgroundColor: yellow,
                            radius: 15,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                globalProvider.isHidden == true
                                    ? 'assets/icons/collapse.svg'
                                    : 'assets/icons/expand.svg',
                                color: black,
                              ),
                            )),
                      ),
                      floatingActionButtonAnimator:
                          FloatingActionButtonAnimator.scaling,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                  )),
            ),
            //Watches
            Align(
              alignment: Alignment.topCenter,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: const EdgeInsets.only(top: 140),
                  height: globalProvider.isHidden == false ? Get.height / 3 : 0,
                  width: Get.width,
                  alignment: Alignment.center,
                  // color: Colors.red.withOpacity(.4),
                  child: PageView.builder(
                    itemCount: globalProvider.assetWatch.length,
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    itemBuilder: (context, i) =>
                        Image(image: AssetImage(globalProvider.assetWatch[i])),
                  )),
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
                            builder: (context, _) => ListView.builder(
                                shrinkWrap: true,
                                itemCount: globalProvider.stockColorList.length,
                                itemBuilder: (context, i) {
                                  return StockColors(
                                      press: () => globalProvider.getColor(
                                          i, _pageController),
                                      color: globalProvider.stockColorList[i]
                                          ['color'],
                                      index: i);
                                }),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            //Tagline
            globalProvider.isHidden == false
                ? Padding(
                    padding: const EdgeInsets.only(left: 23.0),
                    child: SizedBox(
                        width: Get.width / 2,
                        child: Text(
                          tagline,
                          style: const TextStyle(
                              fontSize: 40,
                              color: black,
                              fontFamily: "InterBold"),
                        )),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
