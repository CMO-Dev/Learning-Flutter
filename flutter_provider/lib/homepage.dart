import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (_, counter, __) => Text(
                '${counter.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: counter.increment,
                  child: const Icon(Icons.add),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                FloatingActionButton(
                  onPressed: counter.remove,
                  child: const Icon(Icons.remove),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                FloatingActionButton(
                  onPressed: counter.reset,
                  child: Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: counter.increment,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
