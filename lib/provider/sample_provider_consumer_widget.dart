import 'package:bloc_ways/provider/sample_provider_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SampleProviderConsumerWidget extends StatelessWidget {
  const SampleProviderConsumerWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<SampleProviderNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${counter.count}",
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
