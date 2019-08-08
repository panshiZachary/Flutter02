main(){

}
// 交通工具类 ，拥有运输功能
abstract class Transportation{
  // 运输功能
  void transport();
}
// 自行车
class Bicycle extends Transportation
with TwoWheelTransportation, LowSafetyIndex, BodyEnergyTransportation {
  @override
  void transport() {
    print(
        "自行车:\n动力组件: ${powerUnit()} , 安全指数： ${safetyIndex()} , 动力来源：${energy()}");
  }
}
// 摩托
class Moto extends Transportation  with TwoWheelTransportation, LowSafetyIndex, GasolineEnergyTransportation{
  @override
  void transport() {
    print(
        "摩托车:\n动力组件: ${powerUnit()} , 安全指数： ${safetyIndex()} , 动力来源：${energy()}");

  }
}
// 汽车
class Car extends Transportation
    with
        FourWheelTransportation,
        MiddleSafetyIndex,
        GasolineEnergyTransportation {
  @override
  void transport() {
    print(
        "汽车:\n动力组件: ${powerUnit()} , 安全指数： ${safetyIndex()} , 动力来源：${energy()}");
  }
}
// 双轮交通工具
class TwoWheelTransportation{
  String powerUnit() =>' 两个轮子';
}
// 四轮交通工具 ，一般安全系数为中
class FourWheelTransportation{
  String powerUnit() =>' 四个轮子';
}
// 安全指数中等的交通工具
class MiddleSafetyIndex{
  String safetyIndex()=> 'middle';
}
// 安全指数低等的交通工具
class LowSafetyIndex{
  String safetyIndex()=> 'low';
}
// 人力脚蹬
class BodyEnergyTransportation{
  String energy()=> '人力';
}
//汽油能源交通工具
class GasolineEnergyTransportation{
  String energy()=> '汽油';
}

// 四轮木制脚踏车
class woodenCar extends Car{
  @override
  void transport() {
    print(
        "四轮木制脚踏车:\n动力组件: ${powerUnit()} ， 安全指数： ${safetyIndex()} ， 动力来源：${energy()}");
  }
}

//顺序问题
//如果2个或多个超类拥有相同签名的A方法，那么子类会以继承的最后一个超类中的A方法为准。
//当然这是子类没有重写A方法的前提下，如果子类自己重写了A方法则以本身的A方法为准
class A{
  String message()=>'A';
}
class B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}
class AB extends P with A, B {}

class BA extends P with B, A {}

class C extends P with B, A {
  String getMessage() => 'C'; //优先级最高的是在具体类中的方法。
}

class CC extends P with B implements A {
  @override
  String message() {
    return null;
  }
} //这里的implement只是表明要实现A的方法，这个时候具体实现是再B中mixin了具体实现



