import 'package:bloc_ways/main.dart';
import 'package:flutter/material.dart';

class SampleBehaviorSubjectBlocWidget extends StatefulWidget {
  SampleBehaviorSubjectBlocWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SampleBehaviorSubjectBlocWidget createState() =>
      _SampleBehaviorSubjectBlocWidget();
}

class _SampleBehaviorSubjectBlocWidget
    extends State<SampleBehaviorSubjectBlocWidget> {
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
              stream: behaviorSubjectBloc.count,
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
          behaviorSubjectBloc.addCount();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
