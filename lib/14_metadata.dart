import 'todo.dart';
mian(){
  dynamic tv = new Television();
  tv.activate();
  tv.turnOn();
  tv.doSomething();
  
}

class Television{
  @deprecated
  void activate() {
    turnOn();
  }

  void turnOn() {
    print('Television turn on!');
  }
  @override
  noSuchMethod(Invocation invocation) {
    print('没有找到方法');
  }
   @Todo(who: 'zachary',what: 'create a method')
  void doSomething(){
     print('doSomething');

  }
  
  
}