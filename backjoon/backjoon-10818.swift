/*
let repeatNum = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map{ Int($0)! }
var maxNum: Int = 1
var minNum: Int = 1000000

for num in numArr {
    if num > maxNum { maxNum = num }
    if num < minNum { minNum = num }
}

print("\(minNum) \(maxNum)")
이렇게 하니 시간초과가 나왔다
*/

/*
let repeatNum = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map{ Int($0)! }

print("\(numArr.min()!) \(numArr.max()!)")
이렇게 하니 시간초과가 나왔다 (..?)
*/

let repeatNum = readLine()
let numArr = readLine()!.split(separator: " ").map{ Int(String($0))! }

print("\(numArr.min()!) \(numArr.max()!)")

// 이러니 성공했다...
// 맵핑 할 때 Strig으로 받고, Int로 받으니까 됐는데... 이게 왜 더 빠른지는 잘 모르겠네...