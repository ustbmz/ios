//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

//: [Next](@next)
var age = 0
// swfit3.0 后已经取消了 ++ -- 运算符  使用 += -=
// age ++
age += 1

if age != 1 {
   print(age)
}else{
   print("else")
}
// 字符区间 但不能用于 for in
let a : Character = "a"
let z : Character = "z"

let range = a...z

print(range.contains("b"))

// 带间隔的区间值
for item in stride(from: 0, through: 100, by: 5){
    print(item)
}

// Switch
// case default 后面并没有大括号
// Switch 必须要处理所有情况
// case default 后面必须要有至少一条语句
// default 如果不想做任何事情，可以直接break
var num = 1
switch num{
case 1:
    print("switch num 1")
    // 可以不写break 并不会贯穿后面的操作 执行case后自动break
    // break
    // fallthrough 强制贯穿后面的操作 会执行case 2
    fallthrough
case 2:
    print("switch num 2")
    // 会执行default
    fallthrough
default:
    print("switch num default")
}

// 如果可以保证已处理所有情况，可以不加default
enum Answer { case right , wrong}
let answer = Answer.right

switch answer {
case Answer.right:
   print("right")
case Answer.wrong:
    print("wrong")
}
// 可以精简语法
switch answer {
case .right:
   print("right")
case .wrong:
    print("wrong")
}
// switch值绑定
// switch where
let point = (1,-1)
switch point{
case let (x,y) where x == y:
    print("x==y")
case let (x,y) where x == -y:
    print("x==-y")
case let (x,y):
    print("\(x) \(y)")
}

// where for
// 使用where进行过滤 相当于countine
let numbers = [ 10,20,30,-10,-20,-30]
var sum = 0
for num in numbers where num > 0{
    sum += num
}
print(sum)


// 函数注释

/// 求和 [概述]
///
/// 更详细的描述,返回两个数的和
///
/// - Parameter v1:第1个整数
/// - Parameter v2:第2个整数
/// - Returns ： 两个整数的和
///
/// - Note : 传入两个整数即可
/// - Returns: <#description#>
func sumRet(v1:Int,v2:Int) -> Int{
    return v1 + v2
}
