import 'package:flutter/material.dart';

class GlobalProvider with ChangeNotifier {
  bool _isHidden = false;

  bool get isHidden => _isHidden;
  set isHidden(
    bool value,
  ) {
    _isHidden = value;
    notifyListeners();
  }

  bool _isSelected = false;

  bool get isSelected => _isSelected;
  set isSelected(
    bool value,
  ) {
    _isSelected = value;
    notifyListeners();
  }

  bool _isSkobeloff = true;

  bool get isSkobeloff => _isSkobeloff;
  set isSkobeloff(
    bool value,
  ) {
    _isSkobeloff = value;
    notifyListeners();
  }

  bool _isRed = false;

  bool get isRed => _isRed;
  set isRed(
    bool value,
  ) {
    _isRed = value;
    notifyListeners();
  }

  bool _isImperial = false;

  bool get isImperial => _isImperial;
  set isImperial(
    bool value,
  ) {
    _isImperial = value;
    notifyListeners();
  }

  bool _isWhite = false;

  bool get isWhite => _isWhite;
  set isWhite(
    bool value,
  ) {
    _isWhite = value;
    notifyListeners();
  }

  void pickSkobeloff() {
    isSkobeloff = true;
    isImperial = false;
    isRed = false;
    isWhite = false;
    notifyListeners();
  }

  void pickImperial() {
    isSkobeloff = false;
    isImperial = true;
    isRed = false;
    isWhite = false;
    notifyListeners();
  }

  void pickRed() {
    isSkobeloff = false;
    isImperial = false;
    isRed = true;
    isWhite = false;
    notifyListeners();
  }

  void pickWhite() {
    isSkobeloff = false;
    isImperial = false;
    isRed = false;
    isWhite = true;
    notifyListeners();
  }
}
