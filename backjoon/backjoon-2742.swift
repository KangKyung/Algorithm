let repeatNum = Int(readLine()!)!

for num in stride(from: 0, through: repeatNum-1, by: 1) {
    print(repeatNum - num)
}

// 반복 범위를 이상하게 설정해서 한번 틀렸다..
// 이상한 실수는 줄이자 ..😒