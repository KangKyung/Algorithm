var resultDic: [Int:Int] = [:]

for _ in 1...10 {
    let key = Int(readLine()!)! % 42
    if resultDic[key] == nil { resultDic[key] = 1 }
}

print(resultDic.count)
/*
나머지 숫자 번째의 배열 value에 1을 저장하고,
배열의 총 개수를 프린트한다.
*/