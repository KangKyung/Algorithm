let inputNum = Int(readLine()!)!

if (inputNum % 4) == 0 {
    if (inputNum % 100) == 0 && (inputNum % 400) != 0 {
        print(0)
    } else {
        print(1)
    }
} else {
    print(0)
}

// 알고리즘 보단 윤년의 개념에 대해 더 자세히 알게된다! ㅋㅋㅋ