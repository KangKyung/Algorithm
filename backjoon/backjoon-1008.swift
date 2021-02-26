let inputArr = readLine()!.split(separator: " ").map{ Double($0)! }
print(inputArr[0] / inputArr[1])

// 아무생각없이 맵핑할 때 int로 캐스팅해서 한번 틀렸다.. 🤦🏻