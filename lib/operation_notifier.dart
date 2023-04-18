import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Operation {
  zbroj,
  razlika,
  umnozak,
  kolicnik,
  ostatak,
}

extension OperationExtension on Operation {
  String get name {
    switch (this) {
      case Operation.zbroj:
        return "Zbroj";
      case Operation.razlika:
        return "Razlika";
      case Operation.umnozak:
        return "Umnožak";
      case Operation.kolicnik:
        return "Količnik";
      case Operation.ostatak:
        return "Ostatak";
    }
  }
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
