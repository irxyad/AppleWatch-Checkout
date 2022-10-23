import 'package:flutter/material.dart';
import 'package:review_apple_watch/constanta.dart';

class Spec extends StatelessWidget {
  const Spec({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
      height: 1.7,
      fontSize: 14,
      color: white,
      fontFamily: "Inter",
    );
    return Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, top: 18),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Table(
            border: const TableBorder(
                horizontalInside: BorderSide(color: Colors.white, width: 1)),
            children: [
              TableRow(children: [
                Text(
                  "Display",
                  style: textStyle,
                ),
                Text(
                  "40mm or 44mm case,\nOver 30% larger display,\nAlways-On Retina LTPO OLED display,\n1000 nits.",
                  style: textStyle,
                ),
              ]),
              TableRow(children: [
                Text(
                  "Connectivity",
                  style: textStyle,
                ),
                Text(
                  "LTE and UMTS,6 Wi-Fi,\nBluetooth 5.0.",
                  style: textStyle,
                ),
              ]),
              TableRow(children: [
                Text(
                  "Chip",
                  style: textStyle,
                ),
                Text(
                  "S6 SiP with 64-bit dual-core processor,\nW3 wireless chip,\nU1 chip (Ultra Wideband).",
                  style: textStyle,
                ),
              ]),
              TableRow(children: [
                Text(
                  "Features",
                  style: textStyle,
                ),
                Text(
                  "GPS/GNSS,\nAlways-on altimeter,\nCompass,\nWaterproof (50 meters),\nBlood oxygen sensor,\nThird generation optical heart sensor,\nSOS emergency call,\nAccelerometer,\nGyroscope,\nAmbient light sensor,\nSpeaker,\nMicrophone,\nGymKit,\nCapacity 32GB (GPS),\nBack cover of sapphire crystal and ceramicik (GPS).",
                  style: textStyle,
                ),
              ]),
            ],
          ),
        ));
  }
}
