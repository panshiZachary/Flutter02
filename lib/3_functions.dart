import 'dart:core';

void main() {
  // 普通函数的定义
  int add(int a, int b) {
    return a + b;
  }

  print(add(1, 2));
  //所有的函数都返回一个值。如果没有指定返回值，则 默认把语句 return null; 作为函数的最后一个语句执行。
  testFunction() {}
  ;
  print(testFunction());
  // 可省略类型不定义 (不建议)
  add1(x, y) {
    return x + y;
  }

  print(add(2, 3));
  print(add1("1", "2"));

  // 箭头函数：=> 表达式
  int add2(int x, int y) => x + y;
  print(add2(4, 5));

  // 可选命名参数，使用 {parm,pram}的方式来指定参数
  int add3({int a, int b, int c}) {
    a ??= 1;
    b ??= 2;
    c ??= 3;
    return a + b + c;
  }

  print(add3(a: 2));

  // 可选位置参数 ，把可选位置参数放在[]中，把必填参数放在 可选参数前
  int add4(int a, [int b, int c]) {
    b ??= 2;
    c ??= 3;
    return a + b + c;
  }

  print(add4(1));

  // 5 可选命名参数默认值 （默认值必须是编译时的常量）可以使用 = 或者是冒号
  //Dart SDK 1.21 之前只能用冒号，冒号的支持以后会移除，所以建议使用等号
  int add5(int x, {int y = 1, int z = 2}) {
    return x + y + z;
  }

  print(add5(1));
  // 6 可选位置参数默认值（ 默认值必须是编译时的常量） 只能使用 =
  int add6(int x, [int y = 2, int z = 3]) {
    return x + y + z;
  }

  print(add6(2));

  // 使用list map 默认值 必须const
  void func(
      {List list = const [1, 2, 3], Map map = const {1: 1, "name": 'zach'}}) {}
  ;

  // 匿名函数
  // 赋值给变量
  // 无参数匿名函数
  var anonfunc1 = ()=> print("无参数匿名函数赋值给变量");
  anonfunc1();

  // 有参数匿名函数
  var anonFunc = (name)=>print('I am $name');
  anonFunc('zach');

  //通过（） 调用 （不推荐）
  (()=>print('不推荐'))();

  // 匿名函数传参
  List test(List list,String func(str)){
    for(var i = 0; i < list.length ; i ++){
      list[i] = func(list[i]);
    }
    return list;
  }
  List list = [1,2,3,4,5,6];

  print(test(list, (str)=> str * 2));

  // List.froEach 就用的匿名函数
  List list1 = [11,22,33];
  list1.forEach((item)=>'$item');

  // 返回 function 对象 (闭包)
  Function makeAddFunc(int x){
    x ++;
    return (int y)=> x + y;

  }
  var makeAddFunc2 = makeAddFunc(1);
  print(makeAddFunc2(2));

  // 函数别名
  MyFunc myFunc;
  // 可以指向任何同签名的函数
  myFunc = subtract;
  myFunc(4,2);

  myFunc =divide;
  myFunc(8,4);

  //typedef 可以作为参数传递
  calcutor(4, 2, subtract);


}
// 函数别名
typedef MyFunc(int x,int y);
// 根据 myfuc 的相同的函数签名来定义类型
subtract(int a, int b){
  print("subtract ${a-b}");
}

divide(int a, int b){
  print("subtract ${a/b}");
}
// typedef 也可以作为参数传递
calcutor(int a,int b,MyFunc func){
  func(a,b);
}


