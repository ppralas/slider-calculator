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
        title: const Text('Slider Calculator'),
      ),
      body: Column(
        children: [
          DropdownButton<Operation>(
            value: operation,
            onChanged: (Operation? newValue) {
              ref.watch(operationProvider.notifier);
            },
            items: Operation.values
                .map((operation) => DropdownMenuItem(
                      value: operation,
                      child: Text((operation.name)),
                    ))
                .toList(),
          ),
          Text(
            ((sliderOneValue).round()).toString(),
          ),
          Slider(
            value: ref.watch(sliderOneValueProvider),
            onChanged: (value) => ref
                .watch(sliderOneValueProvider.notifier)
                .update((sliderOneValue) => value),
          ),
          Text(
            ((sliderTwoValue).round()).toString(),
          ),
          Slider(
            value: sliderTwoValue,
            onChanged: (value) => ref
                .watch(sliderTwoValueProvider.notifier)
                .update((state) => value),
          ),
          Text(
            (result.toString()),
          ),
        ],
      ),
    );
  }
}
