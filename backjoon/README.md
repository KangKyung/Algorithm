## 알고리즘을 위한 Swift 기본 문법

**키보드 입력**

```swift
var inputNums1 = readLine()                                         // return : Optional String

var inputNums2 = readLine()!.split(separator:" ")                   // type :  String.SubSequence

var inputNums3 = readLine()!.split(separator:" ").map{ Int($0) }    // int cast
```
___
**Array**

```swift
// 빈 배열 만들기
var emptyArr1: [Int] = []
var emptyArr2 = [Int]()
var emptyArr3: Array<Int> = []

// 안 빈 배열 만들기
var dummyArr1 = Array(1...5) // [1,2,3,4,5]

// 크기가 정해진 배열
var dummyArr2 = Array(repeating: 1, count: 3) // [1,1,1]

/*
 2차원 배열(Matrix)
 안쪽count는 행, 바깥count는 열을 나타낸다.
 matrix2[i][j] 형태로 사용한다.
 */
var matrix1 = [[Int]]() // 초기화
let matrix2: [[Int]] = Array(repeating:Array(repeating:1, count: 5), count: 3)

// 거꾸로 출력
let returnArr1 = dummyArr1.reversed()

// 배열 정렬
let returnArr2 = dummyArr1.sorted()         // default는 오름차순
let returnArr3 = dummyArr1.sorted(by: >)    // 내림차순

// map
// [1,2,3,4] 원소를 전부 Int로 맵핑
var strArr1 = ["1","2","3","4"]
let mapArr = strArr1.map { Int($0)! }

// filter
// [2,4] 조건에 맞게 뽑아냄
var filterArr = [1,2,3,4]
let returnFilterArr = filterArr.filter { $0 % 2 == 0 }

// reduce
// 합 연산. 숫자면 모두 더하고, 문자열이면 합쳐짐
var reduceArr = [1,2,3,4]
let returnReduceArr = reduceArr.reduce(0, +)
```
___
**Index**

```swift
var strArr2 = ["1","2","3","4"]

// 2번째 index
let secondIndex = strArr2.index(after: strArr2.startIndex)

// 마지막 index
let endIndex = strArr2.index(before: strArr2.endIndex)

// n번째 index
var n: Int
let nthIndex = strArr2.index(strArr2.startIndex, offsetBy: n-1)

// 0~2번째 subString
let substring = strArr2[0...2]
```
___
**Dictionary**

```swift
// 생성
var dummyDic1: [Int:String] = [:]
var dummyDic2 = [Int:String]()
var dic = [1:"a", 2:"b", 3:"c"]

// 값 수정
dummyDic2.updateValue("c", forKey:3)
dummyDic2[3] = "d"
// Key변경은 아예 지우고 다시생성 해야함

// 값 추가
dummyDic2[4] = "5"

// 접근
let index4 = dummyDic2[4]! // Unwrapping

// for loop
for (key, value) in dic {
    print(key)      // 1,2,3
    print(value)    // a,b,c
}

// 값 삭제
dic.removeValue(forKey:4)   // 특정 키값 삭제
dic.removeAll()             // 전체 삭제

// sort
let sort1 = dic.sorted(by: { $0.key < $1.key })     // key sort
let sort2 = dic.sorted(by: { $0.value < $1.value }) // value sort
```
___
**비트 연산**

`NOT` : `~A` -> ~00001111 == 11110000 으로. 0과 1을 바꿔준다

`AND` : `A & B` -> 두 개 자릿수가 둘 다 1일 때 1 리턴

`OR` : `A | B` -> 둘 중 하나라도 자릿수가 1이면 1 리턴

`XOR` : `A ^ B` -> 두 개 자릿수가 다르면 1, 같으면 0 리턴

`Left Shift` : `A << n` -> n만큼 왼쪽으로 이동하고 빈자리는 0으로 채운다

`Right Shift` : `A >> n` -> n만큼 오른쪽으로 이동하고 빈자리는 0으로

`3항 연산자` : `(조건문) ? (true) : (false)` -> a < b ? a: b
___
**loop**

```swift
while true {
  // ...
}

repeat {
  // ...
} while true

exit(0) // 실행 종료
```
___
**소수**

```swift
// 소수를 Int로
let intNumber = (12.32 as NSDecimalNumber).intValue

// 부동소수점 - NumberFormatter
let formatter = NumberFormatter()
formatter.roundingMode = .down // 내림
formatter.roundingMode = .up // 올림
formatter.roundingMode = .halfUp // 반올림
formatter.minimumFractionDigits = 2 // 2자릿수까지만 표현
formatter.maximumFractionDigits = 2
let num = formatter.string(from: NSNumber(value: 2.3243254)) // 2.32
```
___
**진수**

```swift
let number10 = Int("11100111", radix: n)!   // N진법 -> 10진수
let numberN = String(number10, radix: n)    // 10진수 -> N진법

// 거듭제곱
let pow2of3 = pow(2, 3) // 2의 3승

// 절대값
let absNumber = abs(-29) // 29

/*
 원하는 범위 설정
 stride(from:1, to:5, by:2)      // open range..5 불포함 1,3 까지만
 stride(from:1, through:5, by:2) // closed range..5 포함 1,3,5까지
 */
for even in stride(from:2, through:100, by:2) {
    print("짝수 : \(even)")
}
```
___
**타입 범위**

`Int`, `Int64` = 2의 8승 - 1 (9223372036854775807) -> 19자리  
`Int32` = 2의 6승 -1 (2147483647) -> 10자리  
`Float` = 소수점 6자리까지 표현 가능  
`Double` = 소수점 15자리까지 표현 가능
___
**about String**

```swift
//문자를 ASCII 코드로 변환
let asciiCode = Character("a").asciiValue!

// String으로 쓰여진 식 바로계산
let mathExpression = NSExpression(format: "3+4+2-1*6")
let mathValue = mathExpression.expressionValue(with: nil, context: nil) as! Int
```
