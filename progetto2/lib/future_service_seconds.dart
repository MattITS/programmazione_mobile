import 'do_something_mixin.dart';

class FutureServiceSeconds with doSomethingMixin {
  Future<int> doSomethingWithType(int duration) async {
    return doSomething(duration, 1);
  }
}