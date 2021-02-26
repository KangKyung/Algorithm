let coordinatesX = Int(readLine()!)!
let coordinatesY = Int(readLine()!)!

if coordinatesX > 0 {
    if coordinatesY > 0 {
        print(1)
    } else {
        print(4)
    }
} else if coordinatesX < 0 {
    if coordinatesY > 0 {
        print(2)
    } else {
        print(3)
    }
}

// 알고리즘 보다 1,2,3,4 사분면이 어느쪽이었는지 복습할 수 있었다 ㅋㅋㅋㅋ