import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_lab_app/w08/04/providers.dart';


class RiverpodFirstScreen extends ConsumerWidget {
  const RiverpodFirstScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appName = ref.watch(appNameProvider);

    return Scaffold(
      appBar: AppBar(title: Text(appName)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "App Name: $appName",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}