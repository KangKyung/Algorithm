while true {
    let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
    if inputArr[0] == 0 && inputArr[1] == 0 { break }
    
    print(inputArr[0] + inputArr[1])
}

// 무한루프 중에 break조건을 넣어주면 된다.