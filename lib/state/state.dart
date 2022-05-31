import 'dart:math';

import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  String? DistrOfArrival;
  String? DistrOfService;
  final meanArrival = TextEditingController();
  final meanService = TextEditingController();

  List<String> Distribution1 = ["Poisson", "Uniform", "Gamma"];
  List<String> Distribution2 = ["Exponential", "Uniform", "Gamma"];

  SetDist1(String? newVal) {
    DistrOfArrival = newVal;
    notifyListeners();
  }

  SetDist2(String? newVal) {
    DistrOfService = newVal;
    notifyListeners();
  }

  Factorial(num x) {
    num fact = 1;
    if (x > 0) {
      for (var i = x; i >= 1; i--) {
        fact *= i;
      }
    } else {
      return 1;
    }
    notifyListeners();
  }

  List<num> CumulativeProbability = [];

  void Simulate() {
    num e = 2.718281828459045;
    num x = 0;
    int i = 0;
    while (x == 1) {
      num poissonVal = ((pow(e, -(num.parse(meanArrival.text)))) *
              (pow(num.parse(meanArrival.text), i))) /
          Factorial(i);
          print(x);
          x = double.parse(poissonVal.toString());
      i++;
      
    }

    // CumulativeProbability.add(double.parse(poissonVal.toString()));

    notifyListeners();
  }

  notifyListeners();
}
