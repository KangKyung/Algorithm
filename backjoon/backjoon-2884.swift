let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
var numH = inputArr[0]
var numM = inputArr[1]

if numM < 45 && numM != 45 {
    if numH == 0 {
        numH = 23
    } else {
        numH = numH - 1
    }
    
    numM = numM + 15
} else {
    numM = numM - 45
}

print(String(numH) + " " + String(numM))

/*
문제가 길어 겁을주지만
결국 요점은 : 시간을 입력하면 거기에 45분 뺀 걸 출력하라는 거다
정말 말은 말 하기 나름이라는걸 배웠다 ..
*/