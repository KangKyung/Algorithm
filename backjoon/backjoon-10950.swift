let repeatNum = Int(readLine()!)!

for _ in stride(from: 1, through: repeatNum, by: 1) {
    let numArr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    print(numArr[0] + numArr[1])
}

// 입력받을 때 이상하게 받아서 런타임 에러가 났다 .. 😭