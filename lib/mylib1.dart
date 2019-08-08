class MyLib {
  String name;
  static MyLib _cache;// 工厂构造函数无法访问this ,所以要使用静态

  factory MyLib([name = 'zachary']) =>
      MyLib._cache ??= MyLib._newObject(name);
  // 定义一个命名构造函数来产生实例
  MyLib._newObject(this.name);
}
class Test{
  void test() => print('test');
}
test(){

}
