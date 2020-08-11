import 'package:rxdart/rxdart.dart';

class SampleBehaviorSubjectBloc {
  int _count = 0;
  final _countSubject = BehaviorSubject.seeded(0);

  void addCount() {
    _count++;
    _countSubject.add(_count);
  }

  Stream<int> get count => _countSubject.stream;
}
