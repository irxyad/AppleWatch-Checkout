import 'package:flutter/material.dart';
import 'package:review_apple_watch/app/utils/constanta.dart';

class GlobalProvider with ChangeNotifier {
  bool _isHidden = false;
  bool isSkobeloff = true;
  bool isRed = false;
  bool isImperial = false;
  bool isWhite = false;
  int indexPicked = 0;
  List<Map<String, dynamic>> stockColorList = [
    {'name': 'Skobeloff', 'color': skobeloff},
    {'name': 'Imperial', 'color': imperial},
    {'name': 'Red', 'color': red},
    {'name': 'White', 'color': white},
  ];
  List assetWatch = [
    'assets/images/iwatch_skobeloff.png',
    'assets/images/iwatch_imperial.png',
    'assets/images/iwatch_red.png',
    'assets/images/iwatch_white.png',
  ];

  String watchColor = 'Skobeloff';

// Untuk expand content Desc dan Spec
  bool get isHidden => _isHidden;
  set isHidden(
    bool value,
  ) {
    _isHidden = value;
    notifyListeners();
  }

// Untuk mengubah size jam
  bool _isSelected = false;
  bool get isSelected => _isSelected;
  set isSelected(
    bool value,
  ) {
    _isSelected = value;
    notifyListeners();
  }

// Untuk mereset colors saat getColor di jalankan
  resetColor() {
    isSkobeloff = false;
    isImperial = false;
    isRed = false;
    isWhite = false;
  }

  animated(PageController pageController) {
    pageController.animateToPage(indexPicked,
        duration: const Duration(seconds: 2), curve: Curves.fastOutSlowIn);
  }

// Mendapatkan color
  void getColor(int index, PageController pageController) {
    indexPicked = index;
    switch (indexPicked = index) {
      case 0:
        resetColor();
        isSkobeloff = true;
        watchColor = 'Skobeloff';
        animated(pageController);
        break;
      case 1:
        resetColor();
        isImperial = true;
        watchColor = 'Imperial';
        animated(pageController);
        break;
      case 2:
        resetColor();
        isRed = true;
        watchColor = 'Red';
        animated(pageController);
        break;
      case 3:
        resetColor();
        isWhite = true;
        watchColor = 'White';
        animated(pageController);
    }
    notifyListeners();
  }
}
