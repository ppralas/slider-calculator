import 'package:flutter_riverpod/flutter_riverpod.dart';

// final sliderTwoValueProvider =
//     StateNotifierProvider<SliderTwoValueNotifier, double>(
//   (ref) => SliderTwoValueNotifier(),
// );

// class SliderTwoValueNotifier extends StateNotifier<double> {
//   SliderTwoValueNotifier() : super(0.0);

//   void updateValue(double value) {
//     state = value;
//   }
// }

final sliderTwoValueProvider = StateProvider<double>((ref) => 0);
