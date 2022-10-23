import 'package:flutter/material.dart';
import 'package:review_apple_watch/constanta.dart';

class StockColors extends StatelessWidget {
  const StockColors({
    Key? key,
    required this.press,
    required this.color,
    required this.ispick,
  }) : super(key: key);
  final VoidCallback press;
  final Color color;
  final bool ispick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  border: ispick == true
                      ? Border.all(
                          color: white,
                          width: 2,
                        )
                      : const Border())),
          Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(50),
              )),
        ],
      ),
    );
  }
}
