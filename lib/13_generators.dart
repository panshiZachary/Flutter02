import 'dart:async';

main() {
  // 同步生成器
  // 调用 getSyncGenerator 立即返回 Iterator
  var it = getSyncGenerator(5).iterator;
  // 调用moveNext后 getSyncGenerator，才开始执行
  while (it.moveNext()) {
    print(it.current);
  }

  //调用getAsyncGenerator立即返回Stream,只有执行了listen，函数才会开始执行
  getAsyncGenerator(5).listen((value) => print('$value'));

  StreamSubscription subscription = getAsyncGenerator(5).listen(null);
  subscription.onData((value) {
    print('value');
    if (value > 2) {
      subscription.pause(); // 可以使用StreaSubscroption 对象对数据流进行控制
    }
  });

  //递归同步生成器
  var iterator = getSyncRecursiveGenerator(5).iterator;
  while(iterator.moveNext()){
    print(iterator.current);
  }
  //  递归异步生成器
  getAsyncRecursiveGenerator(5).listen((value)=>print('$value'));
}

// 同步生成器 ，使用的是 sync* ,返回的是Iterable
Iterable<int> getSyncGenerator(int n) sync* {
  print('start');
  int k = n;
  while (k > 0) {
    yield k--;
  }
  print('end');
}

// 异步生成器
Stream<int> getAsyncGenerator(int n) async* {
  print('start');
  int k = 0;
  while (k < n) {
    yield k++;
  }
  print('end');
}
// 递归生成器 同步
Iterable<int> getSyncRecursiveGenerator(int n) sync*{
  if(n>0){
    yield n;
    yield* getSyncRecursiveGenerator(n-1);
  }

}
// 递归异步生成器
Stream<int> getAsyncRecursiveGenerator(int n) async*{
  if(n>0){
    yield n;
    yield* getAsyncRecursiveGenerator(n-1);
  }
}


