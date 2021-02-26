var maxNum: Int = 0
var resultCount: Int = 1

for count in 1...9 {
    let num = Int(readLine()!)!
    
    if maxNum < num {
        maxNum = num
        resultCount = count
    }
}

print(maxNum)
print(resultCount)

/*
난 딱히 배열을 사용하지 않았는데 ...
 
입력받는 숫자들 넣는데 반복문 한번,
배열에있는 숫자들 비교하는데 반복문 한번
-> 이거 비효율일거 같은데.. 다른 방법이 있는건가??
*/