let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
print(inputArr[0] + inputArr[1])
print(inputArr[0] - inputArr[1])
print(inputArr[0] * inputArr[1])
print(inputArr[0] / inputArr[1])
print(inputArr[0] % inputArr[1])

// 맵핑할 때 '!'넣는거 까먹었다 틀렸다 .. 🤦🏻