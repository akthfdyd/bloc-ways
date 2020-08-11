import 'package:bloc_ways/inheritedwidget/sample_inherited_behaviorsubject_bloc.dart';
import 'package:bloc_ways/inheritedwidget/sample_inherited_provider_widget.dart';
import 'package:flutter/material.dart';

class SampleInheritedBlocWidget extends StatefulWidget {
  SampleInheritedBlocWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SampleInheritedBlocWidget createState() =>
      _SampleInheritedBlocWidget();
}

class _SampleInheritedBlocWidget
    extends State<SampleInheritedBlocWidget> {
  @override
  Widget build(BuildContext context) {
    SampleInheritedBehaviorSubjectBloc sampleFlutterBloc =
        SampleInheritedProviderWidget.of(context);
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
              stream: sampleFlutterBloc.count,
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
          sampleFlutterBloc.addCount();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
