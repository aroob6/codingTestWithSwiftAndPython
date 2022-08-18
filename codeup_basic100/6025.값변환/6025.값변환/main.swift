//
//  main.swift
//  6025.값변환
//
//  Created by 이보라 on 2022/07/30.
//

import Foundation

//6025
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let num1 = Int(split[0]), let num2 = Int(split[1]) {
//        let res = num1 + num2
//        print(res)
//    }
//}

//6026
//let a = readLine()
//let b = readLine()
//
//if let a = a, let b = b{
//    if let num1 = Float(a), let num2 = Float(b) {
//        let res = num1 + num2
//        print(res)
//    }
//}

//6027
//let a = readLine()
//
//if let a = a {
//    if let num = Int(a) {
//        let hex = String(num, radix: 16)
//        print(hex)
//    }
//}

//6028
//let a = readLine()
//
//if let a = a {
//    if let num = Int(a) {
//        let hex = String(num, radix: 16, uppercase: true)
//        print(hex) // print(hex.uppercased())
//    }
//}

//6029
//let a = readLine()
//
//if let a = a {
//    let num = Int(a, radix: 16) //16진수
//    if let num = num {
//        let octal = String(num, radix: 8) //8진수 (10진수 외 String)
//        print(octal)
//    }
//}

//6030
//let a = readLine()
//
//if let a = a {
//    if let ascii = UnicodeScalar(a) {
//        print(ascii.value)
//    }
//}

//let a = readLine()
//
//if let a = a {
//    if let ascii = Character(a).asciiValue {
//        print(ascii)
//    }
//}

//6031
// a값을 Int로 안바꿔서 오류가 났었,
//let a = readLine()
//
//if let a = a {
//    if let num = Int(a) {
//        if let unicode = UnicodeScalar(num) {
//            print(unicode)
//        }
//    }
//}

//6032
//let a = readLine()
//
//if let a = a {
//    if let num = Int(a) {
//        print(-num)
//    }
//}

//6033
//let a = readLine()
//
//if let a = a {
//    let chr = Character(a)
//    if let ascii = chr.asciiValue { //아스키 값
//        let res = UnicodeScalar(ascii + 1)
//        print(String(res))
//    }
//}

//6034
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        let res = numA - numB
//        print(res)
//    }
//}

//6035
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Float(split[0]), let numB = Float(split[1]) {
//        let res = numA * numB
//        print(res)
//    }
//}

//6036
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    let strA = split[0]
//    if let numB = Int(split[1]) {
//        for _ in 0 ..< numB {
//            print(strA, terminator: "")
//        }
//        print("")
//    }
//}

//6037
//let a = readLine()
//let b = readLine()
//
//if let a = a, let b = b {
//    if let numA = Int(a) {
//        for _ in 0 ..< numA {
//            print(b, terminator: "")
//        }
//        print("")
//    }
//}

//6038
//let a = readLine()
//if let a = a {
//    let split = a.split(separator: " ")
//    if let numA = Double(split[0]), let numB = Double(split[1]) {
//        let res = pow(numA, numB)
//        print(Int(res))
//    }
//}

//6039
//let a = readLine()
//if let a = a {
//    let split = a.split(separator: " ")
//    if let numA = Double(split[0]), let numB = Double(split[1]) {
//        let res = pow(numA, numB)
//        print(res)
//    }
//}

//6040
//let a = readLine()
//
//if let a = a {
//  let split = a.split(separator: " ")
//  if let numA = Int(split[0]), let numB = Int(split[1]) {
//    print(numA/numB)
//  }
//}

//6041
//let a = readLine()
//if let a = a {
//  let split = a.split(separator: " ")
//  if let numA = Int(split[0]), let numB = Int(split[1]) {
//    print(numA%numB)
//  }
//}

//6042
//let a = readLine()
//if let a = a {
//    if let floatA = Float(a) {
//        let strA = String(format: "%.2f", floatA)
//        print(strA)
//    }
//}

//6043
//let a = readLine()
//if let a = a {
//    let split = a.split(separator: " ")
//    if let floatA = Float(split[0]), let floatB = Float(split[1]) {
//        let div = floatA / floatB
//        let res = round(div * 1000) / 1000
//        print(res)
//    }
//}

//6044
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        print(numA + numB)
//        print(numA - numB)
//        print(numA * numB)
//        print(numA % numB)
//        let str = String(format: "%.2f", Float(numA) / Float(numB))
//        print(str)
//    }
//}

//6045
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]), let numC = Int(split[2]) {
//        let sum = numA + numB + numC
//        let avg = sum / 3
//        let str = String(format: "%.2f", Float(avg))
//
//        print("\(sum) \(str)")
//    }
//}

//6046
//let a = readLine()
//
//if let a = a {
//    if let numA = Int(a) {
//        let res = numA << 1 //왼쪽 시프트, 값에 2배
//        print(res)
//    }
//}

//6047
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        print(numA << numB) //numA << numB = numA * 2^numB 어렵다 어려워
//    }
//}

//6048 - 6051
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        print(numA < numB) //6048
//        print(numA == numB) //6049
//        print(numA <= numB) //6050
//        print(numA != numB) //6051
//    }
//}

//6052
//func intToBool(num: Int) -> Bool {
//    return num == 0 ? false : true
//}
//
//let a = readLine()
//
//if let a = a {
//    if let numA = Int(a) {
//        print(intToBool(num: numA))
//    }
//}

//6053
//func intToBool(num: Int) -> Bool {
//    return num != 0 ? false : true
//}
//
//let a = readLine()
//
//if let a = a {
//    if let numA = Int(a) {
//        print(intToBool(num: numA))
//    }
//}

//6054 - 6056
func intToBool(num: Int) -> Bool {
    return num == 0 ? false : true
}

let a = readLine()

if let a = a {
    let split = a.split(separator: " ")
    if let numA = Int(split[0]), let numB = Int(split[1]) {
        let boolA = intToBool(num: numA)
        let boolB = intToBool(num: numB)
        print(boolA && boolB) //6054 둘다 참일 경우 참
        print(boolA || boolB) //6055 하나라도 참이면 참
        print((boolA && !boolB) || (!boolA && boolB)) //6056 참/거짓이 서로 다를때에만 참
        print((!boolA && !boolB) || (boolA && boolB)) //6057 참/거짓이 서로 같을때만 참
        print(!(boolA || boolB)) //6058 둘 다 거짓일 경우만 참
    }
}
