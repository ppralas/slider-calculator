import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_calculator/operation_list.dart';
import 'package:provider_calculator/operation_notifier.dart';
import 'package:provider_calculator/slider_one.dart';
import 'package:provider_calculator/slider_two.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sliderOneValue = ref.watch(sliderOneValueProvider);
    final sliderTwoValue = ref.watch(sliderTwoValueProvider);
    final operation = ref.watch(operationProvider);
    final result = ref.watch(resultProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SliderCalculator'),
      ),
      body: Column(
        children: [
          DropdownButton<Operation>(
            value: operation,
            onChanged: (Operation? newValue) {
              ref
                  //.notifier mora doc da znam da se mjenja vrijednost
                  .read(operationProvider.notifier)
                  .setOperation(newValue ?? Operation.zbroj);
            },
            items: const [
              DropdownMenuItem(
                value: Operation.zbroj,
                child: Text('Zbroj'),
              ),
              DropdownMenuItem(
                value: Operation.razlika,
                child: Text('Razlika'),
              ),
              DropdownMenuItem(
                value: Operation.umnozak,
                child: Text('Umnozak'),
              ),
              DropdownMenuItem(
                value: Operation.kolicnik,
                child: Text('Kolicnik'),
              ),
              DropdownMenuItem(
                value: Operation.ostatak,
                child: Text('Ostatak'),
              ),
            ],
          ),
          Text(
            ((sliderOneValue * 100).round()).toString(),
          ),
          Slider(
            value: sliderOneValue,
            onChanged: (value) =>
                ref.read(sliderOneValueProvider.notifier).updateValue(value),
          ),
          Text(
            ((sliderTwoValue * 100).round()).toString(),
          ),
          Slider(
            value: sliderTwoValue,
            onChanged: (value) =>
                ref.read(sliderTwoValueProvider.notifier).updateValue(value),
          ),
          Text(
            (result.toString()),
          ),
        ],
      ),
    );
  }
}
