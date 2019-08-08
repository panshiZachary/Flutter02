import 'dart:core';

/// 三斜杠文档注释
///  返回类型void可以省略, 省略后返回值为null
void main(){
  /// ------------------- 变量的声明 ---------------------
  // 声明一个未初始的变量，变量的类型可以改变
  var data;
  data = 'Zachary';
  data = 123;

  dynamic data1;
  data = 'Zachary';
  data = 123;

  Object data2;
  data = 'Zachary';
  data = 123;

  print([data,data1,data2]);
  // var 声明一个初始化的变量，变量类型不可改变
  var name =
  'Zachary'; //变量是一个引用。名字为 name 的变量引用了 一个内容为 “Zachary” 的 String 对象。
//  variable1 = 123;//变量初始化后，name变量的类型被推断为String类型，其类型不能再改变

  // dynamic 和 Object 声明的变量初始化后 ，变量的类型仍然可以改变
  //dynamic和Object声明的变量初始化后，变量的类型仍可改变
  dynamic variable2 = 'Zachary';
  variable2 = 123;
//  variable2.test();//调用不存在的test()方法，编译通过，运行报异常。编译阶段不检查类型
  Object variable3 = 'Zachary';
  variable3 = 123;
//  variable3.test();//调用不存在的test()方法，编译不通过。编译阶段检查类型

  //使用确定类型显示声明变量，变量的类型不能再改变
  String name3;
  name3 = 'Zachary';
//  name3 = 123;//变量的类型不能再改变

//var:如果没有初始值，可以变成任何类型
//dynamic:动态任意类型，编译阶段不检查类型
//Object:动态任意类型，编译阶段检查检查类型
//区别：
//唯一区别 var 如果有初始值，类型被锁定

 ///----------------------------- 默认值------------------------------
  // 没有初始化的变量默认值都是null, 一切皆对象，对象的默认为null
  bool isEmpty;
  assert(isEmpty == null);

  /// ---------------------------------final和const--------------------------------
  // 1. 被 final 和 const 修饰的变量，变量的类型可以省略
  final fVariable = 'zachary';
  const vVariable = 'Zachary';
  // 2. 被 final 和 const 修饰的变量 无法再去修改其值
//  fVariable = "zach";
//  vVariable = 'zach';
// 3. final 和 const 不能和 var 同时使用

//  final var fVariable1 = 'zachary';
//  const var vVariable1 = 'Zachary';
// 4. 如果是类级别的常量 使用 static const
DateTime ; //  参考 static const int monday = 1;
  // 5 . const 可以使用其它 const 常量的值来初始化其值
  const width = 10;
  const height = 10;
  const square = width * height;

  // 6 const 赋值 可以省略
  const List list = const[1,2,3];

  // 7 可以更改非 final 和 非 const的 值。即使它曾经 具有const的值
  var varList = const[1,2,3];
  final finalList = const[1,2,3];
  const constList = const[1,2,3];
  varList[0] = 2;
//  finalList[0] = 3;
//  const[0] = 7;

// 8 .const 导致的不可变形 是可以传递的
  final List ls = [1,2,3];
  ls[1] = 4;
  print(ls);

  const List lsa = [1,2,3];
//  lsa[0] = 5;

// 9 相同的const 常量不会再内存中重复创建
   final finalList1 = [1,2,3];
  final finalList2 = [1,2,3];
  print(identical(finalList1, finalList2));//

  const constList1 = [1,2,3];
  const constList2 = [1,2,3];
  print(identical(finalList1, finalList2));//

  //10. const 需要是编译时常量
  final DateTime finalDateTime = DateTime.now();
  //  const DateTime constDateTime = DateTime.now();//DateTime.now() 是运行期计算出来的值
  const sum = 1 + 2; //使用内置数据类型的字面量通过基本运算得到的值
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';
  const aConstNull = null;
  const validConstString =
      '$aConstNum, $aConstBool, $aConstString, $aConstNull';
  print(validConstString); //使用计算结果为null或数字，字符串或布尔值的编译时常量的插值表达式

















}