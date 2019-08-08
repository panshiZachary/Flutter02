main(){
  // 使用泛型，很多的容器对象，在创建对象时都可以定义泛型类型，跟java一样
  var list = new List<String>();
  list.add('aaa');
  list.add('bbb');
  list.add('ccc');
  print(list);

  var map = new Map<int,String>();
  map[1] = 'aaaa';
  map[2] = 'bbbb';
  map[3] = 'cccc';
  print(map);

  // 泛型函数
  K addCache<K , V>(K key,V value){
    K temp = key;
    print('$key==$value');

  }
  var addCache2 = addCache('a', 'b');
  print(addCache2);

  // 构造函数泛型
  var phone = Phone("123456");
  print(phone.mobileNumber);

  // 泛型限制，可以通过extends 关键字限定泛型的使用类型
  var footMassage = FootMassage();
  var massage = Massage(footMassage);
  massage.message.doMassage();

  // 运行时可判断泛型类型
  var names = List<String>();
  print(names is List<String>);
  print(names.runtimeType);






}

// 构造函数泛型
class Phone<T> {
  final T mobileNumber;
  const Phone(this.mobileNumber);
}
// 泛型限制
class Massage<T extends FootMassage>{
  final T message;
  const Massage(this.message);

}


class FootMassage{
  void doMassage(){
    print('足底按摩');
  }
}