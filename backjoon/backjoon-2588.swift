let num1 = Int(readLine()!)!

let inputString = readLine()!
let num2 = Int(inputString)!
let num2Arr = Array(inputString)

print(num1 * Int(String(num2Arr[2]))! )
print(num1 * Int(String(num2Arr[1]))! )
print(num1 * Int(String(num2Arr[0]))! )
print(num1 * num2)

// "readLine()"에 대한 사용이 미숙해서 런타임 에러가 났다..
// 제일 최근에 난 런타임 에러는 단순 오타 ... ㅠㅠ