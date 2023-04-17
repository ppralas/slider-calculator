// import 'package:provider_calculator/operation_notifier.dart';

// class OperationListNotifier extends StateNotifier<Operation> {
//   OperationListNotifier() : super(Operation.zbroj);

//   void selectOperation(Operation operation) {
//     state = operation;
//   }
// }

// // ignore: prefer_function_declarations_over_variables
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_calculator/operation_notifier.dart';
import 'package:provider_calculator/slider_one.dart';
import 'package:provider_calculator/slider_two.dart';

final resultProvider = StateProvider<double>((ref) {
  final operation = ref.watch(operationProvider);
  final firstValue = (ref.watch(sliderOneValueProvider) * 100).round();
  final secoundValue = (ref.watch(sliderTwoValueProvider) * 100).round();

  switch (operation) {
    case Operation.zbroj:
      return firstValue + secoundValue.toDouble();
    case Operation.razlika:
      return firstValue - secoundValue.toDouble();
    case Operation.umnozak:
      return firstValue * secoundValue.toDouble();
    case Operation.kolicnik:
      return firstValue / secoundValue;
    case Operation.ostatak:
      return firstValue % secoundValue.toDouble();
    default:
      throw Exception('Invalid operation');
  }
});
