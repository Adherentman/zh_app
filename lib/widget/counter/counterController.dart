import 'package:mobx/mobx.dart';

/// 包含 part 'counter.g.dart';
/// 包含 class Counter = CounterBase with _$Counter;
/// 加入一个可观察属性 [count]
/// 编写相关方法
/// 命令行运行 flutter packages pub run build_runner build
/// 或者flutter packages pub run build_runner build --delete-conflicting-outputs
/// 如果需要更改counter.dart时实时更新 counter.g.dart 可以命令行输入
/// flutter packages pub run build_runner watch
part 'counterController.g.dart';

class Counter = CounterController with _$Counter;

/// 全局 counter 对象
final Counter counter = Counter();

abstract class CounterController with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}