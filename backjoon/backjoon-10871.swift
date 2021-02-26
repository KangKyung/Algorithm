let inputArr1 = readLine()!.split(separator: " ").map{ Int($0)! }
let inputArr2 = readLine()!.split(separator: " ").map{ Int($0)! }

for num in inputArr2 {
    if num < inputArr1[1] {
        print("\(num) ", terminator: "")
    }
}

// array의 for loop와 print의 terminator를 알면 간단하게 나타낼 수 있다.