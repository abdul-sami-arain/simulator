import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Distribution1 {
  int? label;
  String? Distribution;

  Distribution1({required this.Distribution, required this.label});
}

List<Distribution1> Dist1Content = [
  Distribution1(Distribution: "Poisson", label: 1),
  Distribution1(Distribution: "Gamma", label: 2)
];

class Distribution2 {
  int? label;
  String? Distribution;

  Distribution2({required this.Distribution, required this.label});
}

List<Distribution1> Dist2Content = [
  Distribution1(Distribution: "Exponential", label: 1),
  Distribution1(Distribution: "Uniform", label: 2)
];