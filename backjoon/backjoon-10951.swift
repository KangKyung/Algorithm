while let inputString = readLine() {
    let inputArr = inputString.split(separator: " ").map{ Int($0)! }
    print(inputArr[0] + inputArr[1])
}

// while조건에 입력형태로 넣어주는 곳에서 틀렸다.
// ... 여러번 해서 익숙해지자!