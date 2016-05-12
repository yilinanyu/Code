//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let a = 2
let count = 3

print (count)
for i in 0...200
{
    sin(Double(count * i))
}

// 定义常量
let name = "sundy"
print(name)
//定义变量
var newName = "ssss"
print(newName)
var age = 30

// 类型指定 又称强类型
var ww:Double = 30
print (ww)

//UTF8
var 张玲华 = "hello"
张玲华 = "☺️"
print(张玲华)
/*
// 变量打印叠加
print("hello\(age)")

// practice

var aaaa:Float = 4.3
var bbbb = aaaa * 2
print("result is \(bbbb)")
*/

// 一行有多个语句时候用分号

var agEe :Int = 11 // 有时候是32/ 64 取决于操作系统
var aaaaa: UInt = 11 // 无符号整型类型 0 开始 最大值比int 大
print(UInt.max)
print(Int.max)

// optional 

var age2 = "21"
var age22: Int = Int(age2)!


// nil  啥都不是, 没有  与oc 不同

// Float 单精度 Double 双精度 长度有区别

var pi: Float = 3.14
var pii : Double = 3.1415
print(pi + Float(pii))// 必须转化成同一种类型的精度
// 数值型字面量
let aa = 122344 // 十进制
let b = 0b0001 // 二进制
let c = 0o1247 // 八进制
let d = 0x1234F // 十六进制

// 类型转换 : 类型（需要转换的东西）Int(c)
// 类型别名： 代替string 啥的 
typealias Valis = String
typealias aaaaaaaa = Double
let aaaaabbbbb: aaaaaaaa = 1.222222222222
let ddd: Valis = "hihihihi"
print(ddd)

// 布尔值
var e: Bool = true
e = false


// Tuples
// 设置元祖的原因: 函数返回复杂的数据类型，不用建立struct，简化
var tus = ("hello", 23, 2.333, "Sundy")
print(tus.1)

func getName() -> (String,Int) {
    return ("HI Return", 23)
}

var tus1 = getName()
print(tus1.0)

// 字符， 字符串（在swift 中是值类型，而不像别的语言中是引用类型）
var cCC: Character = "A"
var s: String = "ABC"
// 字符串初始化
var ss:String = ""
var sss: String = String("abs")

var g = s + sss
var gg = String(cCC) + sss // 字符串与字符相加  可以先将字符转为字符串
var ff = sss + "\(cCC)" // TOKER in 空字符串

//for abcde in gg {
//    print(abcde)
//}

// Operation
let a1 = 0
let a2 = 9
let nnnnn = "sundy"
let ageCount = (a1 < a2) ? a1: a2 // 需要在问号之前加空格
print(ageCount)
if(!(1 == 0) && (2 > 1)){
    print(a1)
}
else  {
    print(a2)
}
// 逻辑 费 ！a && 与   或 ||


//CollectionType 即数组和字典
//

// 数组: 可变，不要求唯一性，一维到多维


var myList = ["Hello", "Test","Demo"]
var myList1: [Int] = [1,2,3]
var myList2: Array = [1,2,3]
print(myList2)


print(myList[0])
print(myList.count)
print(myList2.insert(3, atIndex: 2))// insert 类型与list 内部类型保持一致
for value in myList{
    print(value)
}

// 字典 Dictionary <KeyType, ValueType>
// KeyType 唯一限制是可hash 的，保证唯一性，所有类型都可以的。
// 不可变，但是可以增加和删除，要求key 唯一性，二维的、


var myHash:Dictionary <String,String> = ["key1":"value1","key2":"value2","key3":"value3"]
print(myHash["key2"])
myHash.updateValue("value22", forKey: "key2")

print(myHash["key2"])
myHash.removeValueForKey("key2")

for value in myHash.values {
    print(value)
}

var friends = ["Sundy", "Helen", "Elra"]
for i in 0 ..< friends.count {
    print(friends[i])
    
}
// 控制语句 
var j = 1, k = 5
while (k > j){
    print(j)
    j += 1
}

// if 条件语句

if (k > j){
    print("k > j")
    
}
else{
    print("k < j")
}







switch (k) {
case 1:
    print("1")
case 2:
    print("2")
default:
    print("None")
}
// continue, break, fallthough 贯穿

func sayHello(username:String , age: Int) -> String {
    return "用户名\(username) 年龄：\(age)"
}
print(sayHello("Sunyy", age: 30))

// 无参数 无返回
func getName1() {
    print("NoResult")
}
// 多参数 多返回
func getName2()->( name: String, age: Int){
    return ("Sundy",30)
}
print(getName2().age)
// 参数可变，个数很多
func countPerson(users: String...){
    for user in users {
        print(user)
    }
}

countPerson("sss","sssss","ssssss")
var myName1111 = "lina"
func changeName(inout nameAAA: String) {
    nameAAA += "AAA"
//    nameAAA = "AAA"
}
changeName(&myName1111)


// delegate:!!!!!!!!!!!!!

// 函数类型作为送到变量用来给getmoney 定义
// 函数类型就是参数与返回值得类型集合 如(Int,Int)->Int 就是addMoney 的参数返回值

func addMoney(a: Int,b:Int) -> Int {
    return a + b
}

var getMoney:(Int,Int) -> Int = addMoney
var result = getMoney(1, 2)
print(result)

// unnamed parameter must be replaced with _:
func onMoneyAdded(_: (Int, Int)-> Int){
    print("event called")
}
func onMonyDeleted() -> (Int, Int)-> Int {
    return getMoney
}
let moneyFunc = onMonyDeleted()
moneyFunc(1,2)

onMoneyAdded(getMoney)
onMoneyAdded(addMoney)

// Closures 代码块



