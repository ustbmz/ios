// let 常量 可以不赋值，只指定类型
let a : Int

a = 20

/*
 常量只能赋值一次，且要在使用它的时候之前进行赋值
 不要求在编译时确定,常量值也可以在运行中确定
 */
var num = 5

num += 10
num += 20

let sum = num

print(sum)

// 例如 在运行函数中 返回常量值
// 但是只能赋值一次！！
func getAge() -> Int {
    return 10
}
let age = getAge()
print(age)
