import 'package:flutter_riverpod/flutter_riverpod.dart';

// final sliderOneValueProvider =
//     StateNotifierProvider<SliderOneValueNotifier, double>(
//   (ref) => SliderOneValueNotifier(),
// );

// class SliderOneValueNotifier extends StateNotifier<double> {
//   SliderOneValueNotifier() : super(0.0);

//   void updateValue(double value) {
//     state = value;
//   }
// }

final sliderOneValueProvider = StateProvider<double>((ref) => 0);
