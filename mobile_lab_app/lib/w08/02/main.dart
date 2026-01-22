import 'package:flutter/material.dart';

class ProgramTwoScreen extends StatelessWidget {
  const ProgramTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterWidget(
      child: Scaffold(
        appBar: AppBar(title: const Text("Counter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(
                builder: (context) {
                  final inherited =
                      context
                              .dependOnInheritedWidgetOfExactType<
                                _InheritedCount
                              >()
                          as _InheritedCount;
                  return Text(
                    '${inherited.state.count}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
              Builder(
                builder: (context) {
                  final ancestor =
                      context
                              .dependOnInheritedWidgetOfExactType<
                                _InheritedCount
                              >()
                          as _InheritedCount;
                  return ElevatedButton(
                    onPressed: () => ancestor.state.incrementCount(),
                    child: const Text("Incresse counter"),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  final ancestor =
                      context
                              .dependOnInheritedWidgetOfExactType<
                                _InheritedCount
                              >()
                          as _InheritedCount;
                  return ElevatedButton(
                    onPressed: () => ancestor.state.decrementCount(),
                    child: const Text("Reduce counter"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key, required this.child});
  final Widget child;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late int count;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      count--;
    });
  }

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedCount(state: this, child: widget.child);
  }
}

class _InheritedCount extends InheritedWidget {
  const _InheritedCount({required this.state, required super.child});
  final _CounterWidgetState state;

  @override
  bool updateShouldNotify(data) => true;
}
