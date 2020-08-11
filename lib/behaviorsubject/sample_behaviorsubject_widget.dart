import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SampleBehaviorSubjectWidget extends StatefulWidget {
  SampleBehaviorSubjectWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SampleBehaviorSubjectWidget createState() => _SampleBehaviorSubjectWidget();
}

class _SampleBehaviorSubjectWidget extends State<SampleBehaviorSubjectWidget> {
  final countSubject = BehaviorSubject<int>();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder<int>(
              stream: countSubject.stream,
              initialData: 0,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    "${snapshot.data}",
                    style: Theme.of(context).textTheme.display1,
                  );
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countSubject.add(++count);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
