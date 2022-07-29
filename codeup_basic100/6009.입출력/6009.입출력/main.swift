//
//  main.swift
//  6009.입출력
//
//  Created by bora on 2022/07/28.
//

import Foundation

//6009
//let a = readLine()
//
//if let a = a { //옵셔널
//    print(a)
//}

//6010
//let a = readLine()
//
//if let a = a {
//    if let intA = Int(a) {
//        print(intA)
//    }
//}

//6011
//let a = readLine()
//
//if let a = a {
//    if let floatA = Float(a) {
//        print(floatA)
//    }
//}

//6012
//let a = readLine()
//let b = readLine()
//
//if let a = a, let b = b {
//    if let intA = Int(a), let intB = Int(b) {
//        print(intA)
//        print(intB)
//    }
//}

//6013
//let a = readLine()
//let b = readLine()
//
//if let a = a, let b = b {
//    print(b)
//    print(a)
//}

//6014
//let a = readLine()
//
//if let a = a {
//    if let floatA = Float(a) {
//        print(floatA)
//        print(floatA)
//        print(floatA)
//    }
//}

//6015
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//    print(split[0])
//    print(split[1])
//}

//6016
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//    print(split[1], split[0])
//}

//6017
//let a = readLine()
//
//if let a = a {
//    print(a, a, a)
//}

//6018
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: ":")
//    let hh = split[0]
//    let mm = split[1]
//
//    print("\(hh):\(mm)")
//}

//6019
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: ".")
//    let yy = split[0]
//    let hh = split[1]
//    let mm = split[2]
//
//    print("\(mm)-\(hh)-\(yy)")
//}

//6020
//let a = readLine()
//
//if let a = a {
//    let num = a.components(separatedBy: ["-"]).joined()
//    print(num)
//}

//6021
//let a = readLine()
//
//if let a = a {
//    for index in a {
//        print(index)
//    }
//}

//6022
//func substringYear(str: String, from: Int, to: Int) -> String {
//    let index = str.index(str.startIndex, offsetBy: from)
//    let index1 = str.index(str.startIndex, offsetBy: to)
//
//    let res = String(str[index...index1])
//
//    return res
//}
//
//let a = readLine()
//
//if let a = a {
//    let yy = substringYear(str: a, from: 0, to: 1)
//    let mm = substringYear(str: a, from: 2, to: 3)
//    let dd = substringYear(str: a, from: 4, to: 5)
//    print("\(yy) \(mm) \(dd)")
//}

//6023
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: ":")
//
//    print(split[1])
//}

//6024
let a = readLine()

if let a = a {
    let split = a.split(separator: " ")

    print(split.joined())
}
