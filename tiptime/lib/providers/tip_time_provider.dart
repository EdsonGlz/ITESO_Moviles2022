import 'package:flutter/cupertino.dart';

class TipTimeProvider with ChangeNotifier {
  var costController = TextEditingController();
  bool isSelected = false;
  int? _selectedRadio = null;
  int? get getSelectedRadio => _selectedRadio;
  double tip = 0.0;
  var radioGroupValues = {
    20: "Amazing 20%",
    18: "Good 18%",
    15: "Ok 15%",
  };

  void tipCalculation(double data, int? percent, bool round) {
    // TODO: completar
    if (round) {
      tip = (data * (percent! / 100)).roundToDouble();
    } else
      tip = (data * (percent! / 100));

    notifyListeners();
  }

  void setIsSelected(bool switchValue) {
    isSelected = switchValue;
    notifyListeners();
  }

  void setSelectedRadio(int? radioValue) {
    _selectedRadio = radioValue;
    notifyListeners();
  }
}
