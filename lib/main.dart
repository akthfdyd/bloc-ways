import 'package:bloc_ways/behaviorsubjectbloc/sample_behaviorsubject_bloc.dart';
import 'package:bloc_ways/flutterbloc/sample_flutter_bloc.dart';
import 'package:bloc_ways/flutterbloc/sample_flutter_bloc_Builder_widget.dart';
import 'package:bloc_ways/inheritedwidget/sample_inherited_builder_widget.dart';
import 'package:bloc_ways/inheritedwidget/sample_inherited_provider_widget.dart';
import 'package:bloc_ways/provider/sample_provider_consumer_widget.dart';
import 'package:bloc_ways/provider/sample_provider_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

final behaviorSubjectBloc = SampleBehaviorSubjectBloc();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),

//      // 1.setState
////      home: SampleSetStateWidget(title: 'Flutter Demo Home Page'),

//      // 2.BehaviorSubject
////      home: SampleBehaviorSubjectWidget(title: 'Flutter Demo Home Page'),

//      // 3.BehaviorSubject-BLoC
////      home: SampleBehaviorSubjectBlocWidget(title: 'Flutter Demo Home Page'),

//    );

    // 4.flutter_bloc
//    final _counterBloc = new SampleFlutterBloc();
//    return BlocProvider(
//      create: (BuildContext context) {
//        return _counterBloc;
//      },
//      child: MaterialApp(
//        title: 'Flutter Demo',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: SampleFlutterBlocWidget(title: 'Flutter Demo Home Page'),
//      ),
//    );

    // 5.InheritedWidget
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: SampleInheritedProviderWidget(
//        child: SampleInheritedBlocWidget(
//          title: 'Flutter Demo Home Page',
//        ),
//      ),
//    );

    // 6. Provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) {
          return SampleProviderNotifier();
        })
      ],
      child: Consumer<SampleProviderNotifier>(
        builder: (BuildContext context, value, Widget child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: SampleProviderConsumerWidget(
              title: 'Flutter Demo Home Page',
            ),
          );
        },
      ),
    );
  }
}
