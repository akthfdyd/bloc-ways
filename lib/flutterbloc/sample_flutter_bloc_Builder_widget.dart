import 'package:bloc_ways/flutterbloc/sample_flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SampleFlutterBlocWidget extends StatefulWidget {
  SampleFlutterBlocWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SampleFlutterBlocWidget createState() => _SampleFlutterBlocWidget();
}

class _SampleFlutterBlocWidget extends State<SampleFlutterBlocWidget> {
  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<SampleFlutterBloc>(context);

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
            BlocBuilder(
                bloc: _counterBloc,
                builder: (context, state) {
                  return Text(
                    "$state",
                    style: Theme.of(context).textTheme.display1,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterBloc.add(CounterEvent.INCREASE);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
