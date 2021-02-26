let repeatNum = Int(readLine()!)!

for num in stride(from: 1, through: repeatNum, by:1) {
    if(num < repeatNum) {
        for _ in num...repeatNum-1 {
            print(" ", terminator: "")
        }
    }

    for _ in 1...num {
        print("*", terminator: "")
    }
    
    print()
}

// readLine에 !를 빼먹었다...🤦🏻