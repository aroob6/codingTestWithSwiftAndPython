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

//6054 - 6058
//func intToBool(num: Int) -> Bool {
//    return num == 0 ? false : true
//}
//
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        let boolA = intToBool(num: numA)
//        let boolB = intToBool(num: numB)
//        print(boolA && boolB) //6054 둘다 참일 경우 참
//        print(boolA || boolB) //6055 하나라도 참이면 참
//        print((boolA && !boolB) || (!boolA && boolB)) //6056 참/거짓이 서로 다를때에만 참
//        print((!boolA && !boolB) || (boolA && boolB)) //6057 참/거짓이 서로 같을때만 참
//        print(!(boolA || boolB)) //6058 둘 다 거짓일 경우만 참
//    }
//}

//6059
//let a = readLine()
//
//if let a = a {
//    if let numA = Int(a) {
//        print(~numA)
//    }
//}

//6060 - 6062
//let a = readLine()
//if let a = a {
//    let split = a.split(separator: " ")
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        print(numA & numB) //6060
//        print(numA | numB) //6061
//        print(numA ^ numB) //6062
//    }
//}

//6063
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        print(numA >= numB ? numA : numB)
//    }
//}

//6064
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]), let numC = Int(split[2]) {
//        print(numA <= numB ? (numA <= numC ? numA : numC) : (numB <= numC ? numB : numC))
//    }
//}

//6065
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]), let numC = Int(split[2]) {
//        if numA % 2 == 0 {
//            print(numA)
//        }
//        if numB % 2 == 0 {
//            print(numB)
//        }
//        if numC % 2 == 0 {
//            print(numC)
//        }
//    }
//}

//6066
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]), let numC = Int(split[2]) {
//        print(numA % 2 == 0 ? "even" : "odd")
//        print(numB % 2 == 0 ? "even" : "odd")
//        print(numC % 2 == 0 ? "even" : "odd")
//    }
//}

//6067
//let a = readLine()
//
//if let a = a {
//    if let numA = Int(a) {
//        if numA < 0 && numA % 2 == 0 {
//            print("A")
//        }
//        else if numA < 0 && numA % 2 != 0 {
//            print("B")
//        }
//        else if numA > 0 && numA % 2 == 0 {
//            print("C")
//        }
//        else {
//            print("D")
//        }
//    }
//}

//6068
//let a = readLine()
//
//if let a = a {
//    if let numA = Int(a) {
//        if numA >= 90 {
//            print("A")
//        }
//        else if numA >= 70 {
//            print("B")
//        }
//        else if numA >= 40 {
//            print("C")
//        }
//        else {
//            print("D")
//        }
//    }
//}

//6069
//let a = readLine()
//
//if let a = a {
//    switch a {
//    case "A":
//        print("Best")
//    case "B":
//        print("good")
//    case "C":
//        print("run")
//    case "D":
//        print("slowly")
//    default:
//        print("what?")
//    }
//}


//6070
//let a = readLine()
//
//if let a = a {
//    if let month = Int(a) {
//        switch month / 3 {
//        case 1:
//            print("spring")
//        case 2:
//            print("summer")
//        case 3:
//            print("fall")
//        default:
//            print("winter")
//        }
//    }
//}

//6071
//var n = 1
//
//while n != 0 {
//    let a = readLine()
//    guard let a = a else { break }
//    guard let numA = Int(a) else { break }
//
//    if numA != 0 {
//        print(numA)
//    }
//    else {
//        n = 0
//    }
//}

//6072
//let a = readLine()
//
//if let a = a {
//    if var numA = Int(a) {
//        while numA != 0 {
//            print(numA)
//            numA = numA - 1
//        }
//    }
//}

//6073
//let a = readLine()
//
//if let a = a {
//    if var numA = Int(a) {
//        while numA != 0 {
//            numA = numA - 1
//            print(numA)
//        }
//    }
//}

//6074
//let a = readLine() // input
//let asciiA = Character("a").asciiValue! // a 아스키 값
//var numA = Int(asciiA) // Int로 변환
//
//if let a = a {
//    let ascii = Character(a).asciiValue! //input 아스키 값
//    let num = Int(ascii) // Int로 변환
//
//    while numA <= num {
//        let char = Character(UnicodeScalar(numA)!)
//        print(char, terminator: " ")
//        numA += 1
//    }
//    print("")
//}

//6075 - 6076
//let a = readLine()
//
//if let a  = a {
//    if let numA = Int(a) {
//        for i in 0 ... numA {
//            print(i)
//        }
//    }
//}

//6077
//let a = readLine()
//
//if let a = a {
//    if let numA = Int(a) {
//        var sum = 0
//        for i in 0 ... numA {
//            if i % 2 == 0 {
//                sum += i
//            }
//        }
//        print(sum)
//    }
//}

//6078
//var check = true
//while check {
//    let a = readLine()
//    guard let a = a else { break }
//
//    a == "q" ? check = false : print(a)
//}

//6079
//let a = readLine()
//var check = true
//
//if let a = a, let numA = Int(a) { // if-let 구문을 계속 두번 쓰고 있었네,,,,
//    var sum = 0
//    var i = 0
//
//    while sum < numA {
//        i += 1
//        sum += i
//    }
//    print(i)
//}

//6080
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]) {
//        for i in 1 ... numA {
//            for j in 1 ... numB {
//                print("\(i) \(j)")
//            }
//        }
//    }
//}

//6081
//func isDecimal(_ hex: String) -> Int { // 16진수(문자)를 10진수
//    return Int(hex, radix: 16) ?? 0
//}
//
//func isHex(_ dec: Int) -> String { //10진수를 16진수로
//    return String(dec, radix: 16).uppercased()
//}
//
//let a = readLine()
//
//if let a = a {
//    for i in 1 ... 15 {
//        let res = isDecimal(a) * i
//        print("\(a) * \(i) = \(isHex(res))")
////        print(String.init(format: "%X * %X = %X", isDecimal(a), i, res))
////        format으로 10진수를 바로 16진수로 바꿈
//    }
//}

//6082
//1~29 까지 입력
//let a = readLine()
//
//if let a = a, let numA = Int(a) {
//    for i in 1 ... numA {
//        print(i % 3 == 0 ? "X" : i , terminator: " ")
//    }
//    print("")
//}

//6083
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let red = Int(split[0]), let green = Int(split[0]), let blue = Int(split[0]) {
//        var cnt = 0
//        for r in 0 ..< red {
//            for g in 0 ..< green {
//                for b in 0 ..< blue {
//                    cnt += 1
//                    print(r, g, b, separator: " ")
//                }
//            }
//        }
//        print(cnt)
//    }
//}

//6084
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    // s = 1초동안 마이크로 소리 강약을 체크하는 횟수
//    // b = 한 번 체크한 값을 저장할 때 사용하는 비트수
//    // c = 좌우 등 소리를 저장할 트랙 개수인 채널 개수 ( 모노 1개, 스테레오 2개..)
//    // s = 녹음할 시간(초)
//
//    if let h = Int(split[0]), let b = Int(split[1]), let c = Int(split[2]), let s = Int(split[3]) {
//        let res = (h * b * c * s)
//        let resMb = Double(res) / 8 / 1024 / 1024
//        print(String(format: "%.1f MB", resMb))
//    }
//}


//6085
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    // w = 이미지의 가로 해상도
//    // h = 세로 해상도
//    // b = 한 픽셀을 저장하기 위한 비트
//
//    if let w = Int(split[0]), let h = Int(split[1]), let b = Int(split[2]) {
//        let res = w * h * b
//        let resMb = Double(res) / 8 / 1024 / 1024
//        print(String(format: "%.2f MB", resMb))
//    }
//}

//6086
//let a = readLine()
//
//if let a = a, let numA = Int(a) {
//    var cnt = 1
//    var res = 0
//
//    while true {
//        res += cnt
//        cnt += 1
//
//        if res >= numA { break }
//    }
//    print(res)
//}

//6087
//let a = readLine()
//
//if let a = a, let numA = Int(a) {
//    for i in 1 ... numA {
//        if i % 3 == 0 {
//            continue
//        }
//        else {
//            print(i , terminator: " ")
//        }
//    }
//    print("")
//}

//6088
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    // a = 시작 값
//    // d = 등차의 값
//    // n = 몇 번째 수
//    if var a = Int(split[0]), let d = Int(split[1]), let n = Int(split[2]) {
//        for _ in 1 ..< n {
//            a += d
//        }
//        print(a)
//    }
//}

//6089
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    // a = 시작 값
//    // d = 등비의 값
//    // n = 몇 번째 수
//    if var a = Int(split[0]), let r = Int(split[1]), let n = Int(split[2]) {
//        for _ in 1 ..< n {
//            a *= r
//        }
//        print(a)
//    }
//}

//6090
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    // a = 시작 값
//    // m = 곱할 값
//    // d = 더할 값
//    // n = 몇 번째 수
//    if var a = Int(split[0]), let m = Int(split[1]), let d = Int(split[2]), let n = Int(split[3]) {
//        for _ in 1 ..< n {
//            a = a * m + d
//        }
//        print(a)
//    }
//}

//6091
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let numA = Int(split[0]), let numB = Int(split[1]), let numC = Int(split[2]) {
//        var day = 1
//        while day % numA != 0 || day % numB != 0 || day % numC != 0 {
//            day += 1
//        }
//        print(day)
//    }
//}

//6092

let a = readLine() //10
let call = readLine() // 1 3 2 2 5 6 7 4 5 9

if let a = a, let call = call, let cnt = Int(a) {
    let split = call.split(separator: " ")
    var callNum: [Int] = []
    var callCnt: [Int] = []
    
    //부른 값 정수로 바꾸기
    for i in 0 ..< cnt {
        callNum.append(Int(split[i]) ?? 0)
    }
    //23개 배열 만들기
    for _ in 0 ..< 24 {
        callCnt.append(0)
    }
    //부를때마다 카운트 증가시키기
    for i in 0 ..< cnt {
        callCnt[callNum[i] - 1] += 1
    }
    // 출력하기
    for i in 0 ..< 24 {
        print(callCnt[i], terminator: " ")
    }
    print("")
}
