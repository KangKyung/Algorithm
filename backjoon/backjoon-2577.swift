let num = Int(readLine()!)! * Int(readLine()!)! * Int(readLine()!)!
let numCharArr = Array(String(num))
var resultArr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

for char in numCharArr {
    resultArr[Int(String(char))!] += 1
}

for (_, value) in resultArr.enumerated() {
    print(value)
}

/*
0~9까지 10자리 배열을 만들어서
결과 값 숫자번째 있는 value값을 1씩 올려준다
 
호오 난 이걸 어떻게생각한거지..? 😊
*/