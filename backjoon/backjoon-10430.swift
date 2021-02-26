let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }
print( (inputArr[0] + inputArr[1]) % inputArr[2] )
print( ((inputArr[0] % inputArr[2]) + (inputArr[1] % inputArr[2])) % inputArr[2] )
print( (inputArr[0] * inputArr[1]) % inputArr[2] )
print( ((inputArr[0] % inputArr[2]) * (inputArr[1] % inputArr[2])) % inputArr[2] )

// 뒤에 "% inputArr[2] "이거 넣는거 빠트려서 한번 틀렸다 .. 🤦🏻🤦🏻