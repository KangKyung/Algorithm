let inputNum = Int(readLine()!)!

for num in stride(from:1, through:9, by:1) {
    print("\(inputNum) * \(num) = \(inputNum * num)")
}

/*
"for num in 1...9"이런식으로 쓸 수 도 있는거
stride함수 손에 익히려고 저렇게 쓰다가
단순오타로 한 번 틀렸다 .. 🤦🏻
*/