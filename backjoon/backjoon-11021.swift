let repeatNum = Int(readLine()!)!

for num in stride(from: 1, through: repeatNum, by: 1) {
    let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    print("Case #\(num): \(inputArr[0] + inputArr[1])")
}

// 평범한 덧셈 for loop