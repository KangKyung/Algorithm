let repeatCount = readLine()!
let scoreArr = readLine()!.split(separator: " ").map{ Int($0)! }
let maxScore = Double(scoreArr.max()!)
var sum: Double = 0

for score in scoreArr {
    sum += Double(score) / maxScore * 100
}

print(sum/Double(scoreArr.count))

/*
swift로 double캐스팅 하는 부분이 좀 까다로웠다.
그만큼 코드안정성이 늘어나는거니까,
뭐... 좋은편 이라고 생각한다.
*/