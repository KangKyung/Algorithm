/*
let repeatNum = Int(readLine()!)!

for _ in stride(from: 1, through: repeatNum, by: 1) {
    let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    print(inputArr[0] + inputArr[1])
}
아무 생각 없이 이렇게 짰다가, 시간 초과가 나왔다.
문제에 출제자의 언어별 힌트가 있길래, 찾아보니까

...
아니 갑자기 문제 난이도가 이렇게 올라간다고?
이건 내가 쓰는 언어가 Swift라서 그런게 아닌가 싶었다...
결국 혼자서 코드짜는건 실패하고
C#으로 코드짜서 일단 문제 맞추고,
다른사람이 Swift로 짠 코드를 참고해서 다시 코드를 짰다.
*/

import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        // 인덱스 범위 넘어가는 것 방지
        buffer = Array(try! fileHandle.readToEnd()!) + CollectionOfOne(0)
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        // 공백과 줄바꿈 무시
        while now == 10 || now == 32 { now = read() }
        
        // 음수 처리
        if now == 45{
            isPositive.toggle()
            now = read()
        }
        
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now - 48)
            now = read()
        }

        return sum * (isPositive ? 1 : -1)
    }
}

let fileIO = FileIO()
let n = fileIO.readInt()
for _ in 0..<n {
    print( fileIO.readInt() + fileIO.readInt() )
}

/*
입력 클래스를 만들어서 시간을 단축시키는 방법인데..
하아
Swift 문법을 잘 몰라서.. 계속 공부하면서
좀 더 나은 방법, 더 효율적인 코드를 연구해봐야겠다
*/