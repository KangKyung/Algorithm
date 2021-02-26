let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
if inputArr[0] > inputArr[1] { print(">") }
if inputArr[0] < inputArr[1] { print("<") }
if inputArr[0] == inputArr[1] { print("==") }

// if문 여러개 쓰는거만 보면 switch로 풀고싶은 욕구가 든다 ..