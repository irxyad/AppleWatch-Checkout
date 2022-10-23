import 'package:flutter/material.dart';
import 'package:review_apple_watch/constanta.dart';

class Desc extends StatelessWidget {
  const Desc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 18),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    "Apple Watch Series 6 lets you measure blood oxygen levels with revolutionary new sensors and apps.1 Monitor your heart rate. See your fitness metrics on the enhanced Always-On Retina display, now 2.5 times brighter outdoors when your wrist is not raised. Set a bedtime routine and monitor your sleep. Answer calls and messages right from your wrist. Powerful tools for a healthier, more active and more connected life.",
              ),
              TextSpan(
                  text: "\n\nMain feature points",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text:
                    "\n• GPS models let you answer calls and reply to texts from your wrist\n• Measure your blood oxygen with a completely new sensor and app\n• Check your heart rate anytime with the Heart Rate app\n• Get notified for high and low heart rate\n• The Always-On Retina Display is now 2.5 times brighter outdoors when your wrist is not raised\n• S6 SiP is now up to 20% faster than Series\n• 5 GHz Wi-Fi and Ultra Wideband U1 . chip\n• Track your daily activity through Apple Watch and see your trends in the Fitness app on iPhone\n• Measure sports such as running, walking, cycling, yoga, swimming and dancing\n• Swim ready design\n• Sync your favorite music and podcasts\n• Built-in compass and real time altitude reading\n• Able to detect if you fall hard and will automatically call emergency services for you\n• SOS emergency calls help you get help through your wrist3\n• watchOS 7 with sleep monitoring, cycling directions, and a new customizable watch face\n• Aluminum case available in new colors",
              ),
            ],
          ),
          style: TextStyle(
              height: 1.7, fontSize: 16, color: white, fontFamily: "Inter"),
        ),
      ),
    );
  }
}
