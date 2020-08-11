import 'package:bloc_ways/inheritedwidget/sample_inherited_behaviorsubject_bloc.dart';
import 'package:flutter/material.dart';

class SampleInheritedProviderWidget extends InheritedWidget {
  final SampleInheritedBehaviorSubjectBloc sampleFlutterBloc;

  SampleInheritedProviderWidget({
    Key key,
    SampleInheritedBehaviorSubjectBloc sampleFlutterBloc,
    @required Widget child,
  })  : sampleFlutterBloc =
            sampleFlutterBloc ?? new SampleInheritedBehaviorSubjectBloc(),
        super(key: key, child: child);

  static SampleInheritedBehaviorSubjectBloc of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<SampleInheritedProviderWidget>()
      .sampleFlutterBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
