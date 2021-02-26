let inputNum = Int(readLine()!)!
var result: Int = 0

for num in stride(from: 1, through: inputNum, by: 1) {
    result += num
}

print(result)

/*
음..
좀 더 좋은 코딩습관을 위해
변수 만들 때 자료형도 꼬박꼬박 적고,
stride()함수도 손에 익히고 싶어서 일부러 더 저렇게 쓰는데
코딩 테스트를 생각한다면 안쓰는게 더 나으려나 ..
 
움...
그래도 난 코테 잘보는 개발자보단
보기 쉬운 코드 잘 짜는 개발자가 되는게 더 멋진거 같다!
*/