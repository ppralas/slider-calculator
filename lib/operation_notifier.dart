import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Operation {
  zbroj,
  razlika,
  umnozak,
  kolicnik,
  ostatak,
}

// final operationProvider = StateNotifierProvider<OperationNotifier, Operation>(
//   (ref) => OperationNotifier(),
// );

// class OperationNotifier extends StateNotifier<Operation> {
//   OperationNotifier() : super(Operation.zbroj);

//   void setOperation(Operation operation) {
//     state = operation;
//   }
// }

final operationProvider = StateProvider<Operation>((ref) => Operation.zbroj);
