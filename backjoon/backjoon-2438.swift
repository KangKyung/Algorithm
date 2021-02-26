let repeatNum = Int(readLine()!)!

for num in stride(from: 1, through: repeatNum, by: 1) {
    for _ in 1...num {
        print("*", terminator:"")
    }

    print()
}

/*
'print()'함수의 terminator를 처음 알았다.
없이 쓰면 자동으로 개행이 되는데, 이걸 써주면 출력 구분자를 지정해 주게된다.
지식이 차곡차곡 쌓이는구만👍🏻
*/