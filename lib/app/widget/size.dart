import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/global_provider.dart';

class OpsiSize extends StatelessWidget {
  const OpsiSize({
    Key? key,
    required this.size,
    required this.color1,
    required this.color2,
  }) : super(key: key);
  final String size;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalProvider>(
        builder: (context, globalProvider, _) => GestureDetector(
              onTap: () {
                globalProvider.isSelected = !globalProvider.isSelected;
              },
              child: CircleAvatar(
                radius: 14,
                backgroundColor:
                    globalProvider.isSelected == true ? color2 : color1,
                child: Text(
                  size,
                  style: TextStyle(
                      fontSize: 12,
                      color:
                          globalProvider.isSelected == true ? color1 : color2,
                      fontFamily: "InterBold"),
                ),
              ),
            ));
  }
}
