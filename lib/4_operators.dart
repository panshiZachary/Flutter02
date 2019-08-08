import 'dart:core';

void main(){
  //Operators 操作符
  /// ---------------------------------后缀操作符 ?.--------------------------------
  //  条件成员访问 和 . 类似，但是左边的操作对象不能为 null，例如 foo?.bar 如果 foo 为 null 则返回 null，否则返回 bar 成员
  String a;
  print(a?.length);

  /// ---------------------------------取商操作符 ~/--------------------------------
  //  被除数 ÷ 除数 = 商 ... 余数，A ~/ B = C，这个C就是商。相当于Java里的 /
  print(2/3);
  print(2~/3);

  /// ---------------------------------类型判定操作符--------------------------------
  //类型判定操作符：as、is、is!在运行时判定对象类型
  //as 类型转换
  num iMun = 1;
  num dNum = 1.0;
  int i = iMun as int;
  double b = dNum  as double;
  print([i,b]);

//  String a = iMun as String;

  //is 如果对象是指定的类型返回 True
  print(iMun is int);
  Child child;
  Child child1 = new Child();
  print(child is Parent);
  print(child1 is Parent);

  //is! 如果对象是指定的类型返回 False
  print(iMun is! int);

  /// ---------------------------------条件表达式--------------------------------
  // 三目运算符 condition ? expr1 : expr2
  bool isFinish = true;
  String txtVal = isFinish ? 'yes':'no';
  // expr1 ?? expr2，如果 expr1 是 non-null，返回其值； 否则执行 expr2 并返回其结果。
  bool isPaused;
  isPaused = isPaused ?? false;
  isPaused ??= false;

  /// ---------------------------------级联操作符--------------------------------
  // .. 可以在同一个对象上 连续调用多个函数以及访问成员变量。
  // 严格来说， 两个点的级联语法不是一个操作符。 只是一个 Dart 特殊语法。
  StringBuffer sb = StringBuffer();
  sb
    ..write('aaaaa')
    ..write('flutter')
    ..write('\n')
    ..writeln('dart');

  //重写操作符





}
class Parent{

}
class Child extends Parent{

}