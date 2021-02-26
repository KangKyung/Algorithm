import Foundation

let repeatCount = Int(readLine()!)!

for _ in 1...repeatCount {
    // 값을 받아온다
    var scoreArr = readLine()!.split(separator: " ").map{ Double($0)! }
    let scoreCount = scoreArr[0]
    scoreArr.remove(at: 0)

    // 평균을 계산한다
    let average = scoreArr.reduce(0, +) / scoreCount
    let upperAverage = scoreArr.filter { $0 > average }
    let percentage = Double(upperAverage.count) / Double(scoreArr.count) * 100

    // 소수점 포맷
    let formatter = NumberFormatter()
    formatter.roundingMode = .halfUp // 반올림
    formatter.minimumFractionDigits = 3 // 3자릿수까지만 표현
    formatter.maximumFractionDigits = 3 // 3자릿수까지만 표현
    let result = formatter.string(from: NSNumber(value: percentage))!
    
    print("\(result)%")
}

/*
swift 배열의 reduce와 filter를 사용하였다.
소수점 포맷을 구하는 부분에서 컴파일, 런타임 오류와 오답이 나왔다. (다 나왔네 ㅋㅋㅋ)
하루빨리 문법에 익숙해져서 능숙하게 타라탁탁 한번에 풀었으면 좋겠다.. 😢
*/