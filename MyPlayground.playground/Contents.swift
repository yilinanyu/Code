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
// 函数体内的代码块，参数内，返回值，到处来进行替换

// 枚举 Enumeration
enum Sex{
    case Male(Int, Int)
    case Female
}

var SundySex = Sex.Male(1,1)
SundySex = .Female

enum Country:Int {
    case China = 1
    case Japan = 2
}
var myCountry = Country.China

switch myCountry {
case .China:
    print("China")
    
case .Japan:
    print("Japan")
default:
    print("hello")
}


// oop

// class
class TV {
    var keyCount = "12"
    var keyName = "Power"
    func openTV() -> String {
        return "Success"
    }
}

var miTV = TV()
print(miTV.keyName)
var myTV = miTV
myTV.keyName = "Sundy"
print(miTV.keyName)

// 用恒等式判断两个是否相等
print(myTV === miTV)

// swift 里没有指针这个语法概念，但是引用类型实际上也是reference to 地址 实际上用到指针这个概念

// 构造函数和析够函数
class TV1 {
    var name1:String = "xiaomi"
    init(name1: String) {
        self.name1 = name1
    }
    deinit {
        name1 = ""
    }
    func getMyTVKeys() -> Int {
        return 12
    }
}

var myTV1 = TV1(name1: "Sundy's Tv")
print(myTV1.name1)

// inherentece 

class MITV: TV1 {
    
    init(name: String) {
        super.init(name1: name)
        super.name1 = "helle:\(name)"
        
    }
    override var name1: String {
        get{
            return self.name1
        }
        set {
            if(self.name1 == "sundy") {
                super.name1 = "Hello Sundy's Father"
            }
            else {
                super.name1 = "heloo"
            }
        }
    }
    func getmyKeys(name: String) -> String {
        return "dfdf"
    }
    
    override func getMyTVKeys() -> Int {
        return 24
    }
    
}
// 加上final 就是限制继承 和重写

// Structure 


struct StructTV {
    var keyName :String = "Sundy"
    var keyNumber = 12
    func getKeyNumber() -> Int {
        return keyNumber
    }
    
    
}
var myStructTV = StructTV(keyName: "maizi sued", keyNumber: 32)
print(myStructTV.getKeyNumber())

// 与枚举一样 是值类型 

// struct 和 class 区别
//相同点：
//1. 都有内部变量和函数
//2. 都可以有内部下标方式取属性
//3. 都可以初始化函数
//4. 都可以用协议
//
//不同点：
//1. 类有继承
//2. 类可以多重引用
//3. 类有析构函数
//
//选择： 使用比较简单用struct ，复杂用class

// 协议：与java的interface 一样 


protocol Action {
    var myName: String {
        get
        set
        
    }
    var myAge: Int {
        get
        
    }
    func getMyPName() -> String
    
}












