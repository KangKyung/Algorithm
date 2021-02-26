let repeatNum = Int(readLine()!)!

for num in stride(from: 1, through: repeatNum, by:1) {
    let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    print("Case #\(num): \(inputArr[0]) + \(inputArr[1]) = \(inputArr[0] + inputArr[1])")
}

// 이전 문제보다 더 아름답게 출력시킨 거라고 하는데... 그건 잘 모르겠다