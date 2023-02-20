import 'package:get/get.dart';

class Repository extends GetxController {
  bool _isEasyReading = false;
  bool get isEasyReading => _isEasyReading;
  set isEasyReading(bool value) {
    _isEasyReading = value;
    update();
  }

  int _formalitesCurrentStep = 0;
  int get formalitesCurrentStep => _formalitesCurrentStep;
  set formalitesCurrentStep(int value) {
    if (value < 0 || value > 8) return;
    _formalitesCurrentStep = value;
    update();
  }
}